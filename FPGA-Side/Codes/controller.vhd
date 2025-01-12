-- library ieee;
-- use ieee.std_logic_1164.all;

-- package sevseg_pkg is
--     -- type sevsegdata_arr is array(natural range <>) of integer;
-- end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity controller is
    generic (
        MAXSIZE : integer := 1000
    );
    port (
        clk : in std_logic;
        ir_data : in std_logic_vector(7 downto 0);
        uart_recv : in std_logic_vector(7 downto 0);
        rx_busy : in std_logic;
        tx_busy : in std_logic;
        en_buzz : out boolean;
        source_selector : out std_logic;
        processing_state : out std_logic := '0'; -- 0 or 1
        o_led1, o_led2, o_led3, o_led4 : out std_logic
    );
end controller;

architecture fsm of controller is
    type img_process_state is (initial, running, errored, finished);

    signal processed : std_logic := '0';
    signal img_state : img_process_state := initial;

    -- type wh_arr is array (0 to 3) of integer; --Supports up to width and height of order < 10^4
    signal wh_arr_counter : integer := 0;
    signal w_arr : sevsegdata_arr := (0, 0, 0, 0);
    signal w_arr_en : boolean := false;
    signal h_arr : sevsegdata_arr := (5, 6, 7, 4);
    signal h_arr_en : boolean := false;
    signal img_width : integer := 0;
    signal img_height : integer := 0;

begin
    process(clk)
    begin
        if rising_edge(clk) then
        -- Data Parsing for Width and Height

            -- end if;
            -- if (rx_busy = '0') then
                -- if (processed = '0') then
                --     if (img_state = initial) then
                --         -- w_arr(0) <= to_integer(unsigned(uart_recv)) - 48;
                --         -- Parse if starting 255 on initial machine run, enable saving to w arr
                --         if (uart_recv = "11111111") then
                --             w_arr_en <= true;
                --             -- en_buzz <= true;
                --             img_state <= running;
                --         end if;
                --     elsif (img_state = running) then
                --         -- w_arr(0) <= 9;
                --         -- w_arr(1) <= 1;
                --         -- w_arr(2) <= 5;
                --         -- w_arr(3) <= 6;
                --         -- en_buzz <= false;
                --         -- -- Parse width, append to w_arr
                --         if (not (uart_recv = "11111111")) then
                --             w_arr(wh_arr_counter) <= (to_integer(unsigned(uart_recv)) - 48);
                --             en_buzz <= true;
                --             if (wh_arr_counter < 3) then
                --                 wh_arr_counter <= wh_arr_counter + 1;
                --             else
                --                 wh_arr_counter <= 0;
                --             end if;

                --         -- -- -- -- Parse end of width
                --         elsif (uart_recv = "11111111") then
                --             w_arr_en <= false;
                --             en_buzz <= false;
                --             -- img_state <= finished;
                        
                --         -- -- Parse starting of height after end of width
                --         -- elsif (w_arr_en = false and uart_recv = "11111111") then
                --         --     h_arr_en <= true;
                --         --     en_buzz <= false;
                --         -- -- Parse height, append to h_arr
                --         -- elsif (h_arr_en) then
                --         --     h_arr(wh_arr_counter) <= to_integer(unsigned(uart_recv)) - 48;
                --         --     wh_arr_counter <= wh_arr_counter + 1;
                --         -- -- Parse end of height
                --         -- elsif (h_arr_en and uart_recv = "11111111") then
                --         --     h_arr_en <= false;
                --         --     wh_arr_counter <= 0;
                --         --     img_state <= running;
                --         --     en_buzz <= false;
                --         end if;
                --     elsif (img_state = finished) then
                           

                --     end if;
                --     -- img_width <= 100*(w_arr(0)) + 10*(w_arr(1)) + (w_arr(2));
                --     -- img_height <= 100*(h_arr(0)) + 10*(h_arr(1)) + (h_arr(2));
                    
                -- else
                --     -- 

                -- end if;
            -- end if;
        end if;
        o_led1 <= to_unsigned(w_arr(0), 1)(0);
        o_led2 <= to_unsigned(w_arr(1), 1)(0);
        o_led3 <= to_unsigned(w_arr(2), 1)(0);
        o_led4 <= rx_busy;
        processing_state <= '0';
        -- sevseg_data <= w_arr;
    end process;
end fsm;