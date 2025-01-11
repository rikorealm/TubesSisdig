library ieee;
use ieee.std_logic_1164.all;

entity buzzer is
    port (
        en         : in std_logic;         -- Enabler untuk mengaktifkan buzzer
        note_clk   : in std_logic;         -- Clock untuk notasi buzzer
        duration   : in integer;           -- Durasi untuk menyalakan buzzer
        buzz       : out std_logic         -- Output buzzer
    );
end buzzer;

architecture behavior of buzzer is
    signal duration_counter : integer := 0; -- Counter untuk menghitung durasi
    signal state            : std_logic := '0'; -- Status buzzer (on/off)
begin
    process(note_clk)
    begin
        if rising_edge(note_clk) then
            if en = '1' then
                if duration_counter < duration then
                    duration_counter <= duration_counter + 1;
                    state <= not state; -- Toggle buzzer state
                else
                    state <= '0'; -- Matikan buzzer setelah durasi selesai
                end if;
            else
                duration_counter <= 0; -- Reset counter jika en tidak aktif
                state <= '0';          -- Matikan buzzer
            end if;
        end if;
    end process;

    buzz <= state; -- Berikan status buzzer ke output
end behavior;
