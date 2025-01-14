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
        ir_changing : in std_logic;
        uart_recv : in std_logic_vector(23 downto 0);
        rx_busy : in std_logic;
        tx_busy : in std_logic;
        en_buzz : out boolean;
        source_selector : out std_logic;
        -- o_led1, o_led2, o_led3, o_led4 : out std_logic;
        mem_addr : out std_logic_vector(5 downto 0) := "000000"
    );
end controller;

architecture fsm of controller is
    signal k : integer range 0 to 63 := 0;
    signal ir_prevstate : std_logic := '0';
begin
    process(clk, ir_changing, ir_data)
    begin
        if rising_edge(clk) then
            ir_prevstate <= ir_changing;
            if ir_changing /= ir_prevstate then
                case ir_data is
                    when "00010101" => k <= k;
                    when "00010010" => 
                        k <= k + 1;
                        en_buzz <= true;
                    when "00010011" =>
                        if k - 1 >= 0 then
                            k <= k - 1;
                            en_buzz <= false;
                        else
                            k <= k;
                        end if;
                    when others =>
                        k <= k;
                        en_buzz <= false;
                end case;
            end if;
        end if;
    end process;

    -- processing_state <= '0';
    mem_addr <= std_logic_vector(to_unsigned(k, 6));
end fsm;