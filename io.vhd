library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity io is
    port (
        i_btn1, i_btn2, i_btn3, i_btn4 : in std_logic;
        i_clk : in std_logic;
        o_led1, o_led2, o_led3, o_led4 : out std_logic;
        o_num : buffer integer;
        o_notefreq : buffer integer
    );
end io;

architecture rtl of io is
    signal led1, led2, led3, led4 : std_logic := '1';
    signal counter : integer := 0;
    signal freq : integer := 50;
    type state is (PAUSED, RUNNING);
    signal s : state := RUNNING;
begin
    process(i_clk)
    begin
        -- if i_btn_state = '1' and s = PAUSED then
        --     s <= RUNNING;
        -- elsif i_btn_state = '1' and s = RUNNING then
        --     s <= PAUSED;
        -- end if;
        -- BUTTONS AND LEDS ARE ACTIVE LOW --
        if rising_edge(i_clk) then
            -- if i_btn1 = '0' then
            --     led1 <= '0';
            --     led2 <= '1';
            --     led3 <= '1';
            --     freq <= 4;
            -- elsif i_btn2 = '0' then
            --     led1 <= '1';
            --     led2 <= '0';
            --     led3 <= '1';
            --     freq <= 3;
            -- elsif i_btn3 = '0' then
            --     led1 <= '1';
            --     led2 <= '1';
            --     led3 <= '0';
            --     freq <= 2;
            -- elsif i_btn4 = '0' then
            --     led1 <= '1';
            --     led2 <= '1';
            --     led3 <= '1';
            --     led4 <= '0';
            --     freq <= 1;
            -- -- else
            -- --     led2 <= '1';
            -- --     led3 <= '1';
            -- --     led4 <= '1';
            -- end if;

            -- led1 <= not led1;
            -- if counter < 9 and led1 = '1' then
            --     counter <= counter + 1;
            -- elsif counter >= 9 and led1 = '1' then
            --     counter <= 0;
            -- end if;
        end if;

		o_led1 <= led1;
        o_led2 <= led2;
        o_led3 <= led3;
        o_led4 <= led4;
        o_num <= counter;
        o_notefreq <= freq;
    end process;
end rtl;
                