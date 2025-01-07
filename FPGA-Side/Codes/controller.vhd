library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity controller is
    generic (
        MAXSIZE : integer := 1000
    );
    port (
        clk : in std_logic;
        ir_data : in std_logic_vector(7 downto 0);
        uart_recv : in std_logic_vector(7 downto 0);
        en_buzz : out boolean;
        source_selector : out std_logic;
        processing_state : out std_logic -- 0 or 1

    );
end controller;

architecture fsm of controller is
    type img_process_state is (initial, errored, finished);

    signal processed : std_logic := '0';
    signal img_state : img_process_state;

    type wh_arr is array (0 to 3) of integer; --Supports up to width and height of order < 10^4
    signal wh_arr_counter : integer := 0;
    signal w_arr : wh_arr;
    signal w_arr_en : boolean := false;
    signal h_arr : wh_arr;
    signal h_arr_en : boolean := false;
    signal img_width : integer := 0;
    signal img_height : integer := 0;

begin
    process(clk)
    begin
        if rising_edge(clk) then
        -- Data Parsing for Width and Height
            if (processed = 0) then
                if (img_state = initial) then
                    -- Parse if starting 255 on initial machine run, enable saving to w arr
                    if (uart_recv = 255) then
                        w_arr_en <= true;
                    end if;
                -- Parse width, append to w_arr
                elsif (w_arr_en) then
                    w_arr(wh_arr_counter) <= uart_recv;
                    wh_arr_counter <= wh_arr_counter + 1;
                -- Parse end of width
                elsif (w_arr_en and uart_recv = 255) then
                    w_arr_en <= false;
                    wh_arr_counter <= 0;
                -- Parse starting of height after end of width
                elsif (w_arr_en = false and uart_recv = 255) then
                    h_arr_en <= true;
                -- Parse height, append to h_arr
                elsif (h_arr_en) then
                    h_arr(wh_arr_counter) <= uart_recv;
                    wh_arr_counter <= wh_arr_counter + 1;
                -- Parse end of height
                elsif (h_arr_en and uart_recv = 255) then
                    h_arr_en <= false;
                    wh_arr_counter <= 0;
                end if;

                img_width <= 1000*(w_arr(0)) + 100*(w_arr(1)) + 10*(w_arr(2)) + w_arr(3);
                img_height <= 1000*(h_arr(0)) + 100*(h_arr(1)) + 10*(h_arr(2)) + h_arr(3);
            else
                -- 

            end if;
        end if;
    end process;
end fsm;