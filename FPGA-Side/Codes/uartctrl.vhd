library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart_controller is
    port (
        clk           : in  std_logic;          -- Clock signal
        reset         : in  std_logic;          -- Reset signal
        rx_ready      : in  std_logic;          -- Signal indicating RX data is ready
        tx_done       : in  std_logic;          -- Signal indicating TX is complete
        rx_enable     : out std_logic;          -- Enable RX
        tx_enable     : out std_logic;          -- Enable TX
        idle          : out std_logic           -- Indicates system is in idle state
    );
end entity;

architecture Behavioral of uart_controller is

    -- Define states
    type state_type is (RX_EN, PROCESS_DATA, TX_EN, WAIT_FOR_COMPLETION, IDLE_state);
    signal current_state, next_state : state_type;

    signal processcount : integer range 0 to 2 := 0;
begin

    -- State Machine Process
    state_machine : process(clk, reset)
    begin
        if reset = '1' then
            current_state <= RX_EN;  -- Start with RX_ENABLE state on reset
        elsif rising_edge(clk) then
            current_state <= next_state; -- Transition to the next state
        end if;
    end process;

    -- State Transition Logic
    state_transition : process(current_state, rx_ready, tx_done)
    begin
        case current_state is
            when RX_EN =>
                if rx_ready = '1' then
                    next_state <= TX_EN;
                else
                    next_state <= RX_EN;
                end if;

            when PROCESS_DATA =>
                -- if processcount < 2 then
                --     processcount <= processcount + 1;
                -- else
                --     processcount <= 0;
                    next_state <= TX_EN;
                -- end if;

            when TX_EN =>
                if tx_done = '1' then
                    next_state <= IDLE_state;
                else
                    next_state <= TX_EN;
                end if;
                -- next_state <= WAIT_FOR_COMPLETION;

            when WAIT_FOR_COMPLETION =>
                if tx_done = '1' then
                    next_state <= RX_EN;
                else
                    next_state <= WAIT_FOR_COMPLETION;
                end if;

            when IDLE_state =>
                next_state <= IDLE_state;  -- Remain in IDLE until reset or new event

            when others =>
                next_state <= RX_EN;
        end case;
    end process;

    -- Output Logic
    output_logic : process(current_state)
    begin
        -- Default outputs
        rx_enable <= '0';
        tx_enable <= '0';
        idle <= '0';

        case current_state is
            when RX_EN =>
                rx_enable <= '1';  -- Enable RX

            when TX_EN =>
                tx_enable <= '1';  -- Enable TX

            when IDLE_state =>
                idle <= '1';       -- Set idle signal high

            when others =>
                null;
        end case;
    end process;

end architecture;
