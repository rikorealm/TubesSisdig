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
    
begin
    process(clk)
    variable k : integer := 50;
    begin
        if rising_edge(clk) then
        -- Data Parsing for Width and Height
            -- ir > reset
            if ir_data = "00010101" then
            
            -- ir > increase k coeff
            elsif ir_data = "00010010" then
                k := k + 1;
            -- ir > decrease k coeff
            elsif ir_data = "00010011" then
                k := k - 1;
            end if;
            
        end if;
        -- o_led1 <= to_unsigned(w_arr(0), 1)(0);
        -- o_led2 <= to_unsigned(w_arr(1), 1)(0);
        -- o_led3 <= to_unsigned(w_arr(2), 1)(0);
        -- o_led4 <= rx_busy;
        processing_state <= '0';
    end process;
end fsm;