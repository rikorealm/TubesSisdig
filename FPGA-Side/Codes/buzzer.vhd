-- library ieee;
-- use ieee.std_logic_1164.all;

-- entity buzzer is
--     port (
--         en : in boolean;
--         note_clk : in std_logic;
--         buzz : buffer std_logic
--     );
-- end buzzer;

-- architecture behavior of buzzer is
--     signal state : std_logic := '0';
-- begin
--     process(note_clk, en)
--     begin
--         if (rising_edge(note_clk) and en) then
--             state <= not state;
--         end if;
--         buzz <= state;
--     end process;
-- end behavior;
library ieee;
use ieee.std_logic_1164.all;

entity buzzer is
    port (
        duration : in integer;        -- durasi dalam detik
        en : in boolean;             -- sinyal enable untuk mengaktifkan buzzer
        note_clk : in std_logic;     -- sinyal clock untuk buzzer
        note_freq : in integer;
        buzz : out std_logic         -- output buzzer
    );
end buzzer;

architecture behavior of buzzer is

    signal counter : integer := 0;           -- penghitung waktu
    signal state : std_logic := '0';         -- status buzzer (nyala/mati)

begin
    process(note_clk, en)
    begin
        if rising_edge(note_clk) then
            if en = true then
                if counter < note_freq * duration then
                    counter <= counter + 1;  -- menghitung waktu
                    state <= not state;      -- toggle buzzer state
                else
                    state <= '0';            -- matikan buzzer jika durasi tercapai
                end if;
            else
                counter <= 0;                -- reset counter jika tidak enable
                state <= '0';                -- pastikan buzzer mati
            end if;
        end if;
        buzz <= state;  -- output state ke buzzer
    end process;

end behavior;