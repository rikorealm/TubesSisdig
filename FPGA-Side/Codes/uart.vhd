-- library ieee;
-- use ieee.std_logic_1164.all;
-- use ieee.numeric_std.all;
-- use work.all_pkg.all;

-- entity uart is
-- 	port (
-- 		i_CLOCK		:	in std_logic;
-- 		o_TX		:	out std_logic	:='1';
-- 		i_RX		:	in std_logic;
-- 		o_DATA_recv		:	out std_logic_vector(7 downto 0);
-- 		o_sig_RX_BUSY		:	out std_logic;
-- 		o_sig_TX_BUSY		:	out std_logic;
-- 		sevseg_data : out sevsegdata_arr
-- 	);
-- end uart;


-- architecture behavior of uart is
-- 	--- SIGNALS
-- 	signal r_TX_DATA	:	std_logic_vector(7 downto 0) := (others => '1')	;
-- 	signal s_TX_START	:	std_logic := '0'								;
-- 	signal s_RX_START	:	std_logic := '1'								;

-- 	signal s_TX_BUSY	:	std_logic := '0';

-- 	signal s_rx_data	:	std_logic_vector	(7 downto 0)				;
	
-- 	signal s_log_addr		:	std_logic_vector (7 downto 0)	:= (others => '0')	;
-- 	signal s_button_counter	:	integer range 0 to 50000000	:= 0					;
-- 	signal s_allow_press	: std_logic	:= '0'										;
	
-- 	signal o_sig_CRRP_DATA	: std_logic := '0';
-- 	signal s_mem : rgbarr;

-- 	signal s_pixel_receive : std_logic := '0';
-- 	signal s_pixel_transmit : std_logic := '1';
	
-- 	signal s_sig_RX_BUSY   : std_logic := '0';

-- 	--- COMPONENTS
-- 	component uart_tx is
-- 	port(
	
-- 		i_CLOCK	:	in std_logic							;
-- 		i_START	:	in std_logic							;
-- 		o_BUSY	:	out std_logic							;
-- 		i_RGB	:	in rgbarr;
-- 		i_pixel_receive : in std_logic;
-- 		o_pixel_transmit : out std_logic;
-- 		o_TX_LINE:	out std_logic	:= '1'
-- 	);
-- 	end component;
	
-- 	component uart_rx is
-- 	port(
-- 		i_CLOCK			:	in std_logic;
-- 		i_RX			:	in std_logic;
-- 		i_START			:	in std_logic;
-- 		o_DATA			:	out std_logic_vector(7 downto 0)	;
-- 		i_log_ADDR		:	in std_logic_vector( 7 downto 0 )	;
-- 		i_pixel_transmit : in std_logic;
-- 		o_sig_CRRP_DATA	:	out std_logic := '0';
-- 		o_BUSY			:	out std_logic;
-- 		o_pixel_receive : 	out std_logic;
-- 		o_mem : out rgbarr
-- 	);
-- 	end component;

-- 	component uart_controller is
-- 		port (
-- 			clk           : in  std_logic;          -- Clock signal
-- 			reset         : in  std_logic;          -- Reset signal
-- 			rx_ready      : in  std_logic;          -- Signal indicating RX data is ready
-- 			tx_done       : in  std_logic;          -- Signal indicating TX is complete
-- 			rx_enable     : out std_logic;          -- Enable RX
-- 			tx_enable     : out std_logic;          -- Enable TX
-- 			idle          : out std_logic           -- Indicates system is in idle state
-- 		);
-- 	end component;
-- 	-- signal pixval_ctr : integer := 0;
	
-- 	signal s_reset : std_logic := '0';
-- 	signal s_RX_ENABLE : std_logic := '1';
-- 	signal s_TX_ENABLE : std_logic := '0';
-- 	signal s_idle : std_logic;

-- begin
-- 	--- Transmitter Module
-- 	u_TX	:	uart_tx port map(
	
-- 		i_CLOCK	=>	i_CLOCK		,
-- 		i_START	=>	s_TX_START	,
-- 		o_BUSY	=>	s_TX_BUSY	,
-- 		i_RGB	=>	s_mem	,
-- 		i_pixel_receive => s_pixel_receive,
-- 		o_pixel_transmit => s_pixel_transmit,
-- 		o_TX_LINE	=>	o_TX
-- 	);

-- 	o_sig_TX_BUSY <= s_TX_BUSY;
	
-- 	--- Receiver Module
-- 	u_RX	:	uart_rx port map(
	
-- 		i_CLOCK				=>	i_CLOCK				,
-- 		i_RX				=>	i_RX				,
-- 		i_START				=> 	s_RX_START,
-- 		o_DATA				=>	s_rx_data			,
-- 		i_log_ADDR			=>	s_log_addr			,
-- 		i_pixel_transmit => s_pixel_transmit,
-- 		o_sig_CRRP_DATA		=>	o_sig_CRRP_DATA		,
-- 		o_BUSY				=>	s_sig_RX_BUSY		,
-- 		o_pixel_receive 	=> s_pixel_receive,
-- 		o_mem => s_mem
-- 	);
	
-- 	u_Control : uart_controller port map(
-- 		clk => i_CLOCK,
-- 		reset => s_reset,
-- 		rx_ready => s_pixel_receive,
-- 		tx_done => s_pixel_transmit,
-- 		rx_enable => s_RX_ENABLE,
-- 		tx_enable => s_TX_ENABLE,
-- 		idle => s_idle
-- 	);

-- 	o_DATA_recv <= s_rx_data;
-- 	sevseg_data <= (
-- 		0,
-- 		(s_mem(0) / 100) mod 10,
-- 		(s_mem(0) / 10) mod 10,
-- 		(s_mem(0) / 1) mod 10
-- 	);
-- 	-- sevseg_data <= s_mem;

-- 	-- p_RECEIVE	:	process(i_CLOCK, s_pixel_transmit) begin
-- 	-- 	if(rising_edge(i_CLOCK)) then
-- 	-- 		if(s_sig_RX_BUSY = '0') then
-- 	-- 			if s_pixel_transmit = '1' then
-- 	-- 				s_RX_START	<=	'1';
-- 	-- 			else
-- 	-- 				s_RX_START <= '0';
-- 	-- 			end if;
-- 	-- 		else
-- 	-- 			s_RX_START <= '0';
-- 	-- 		end if;
-- 	-- 	end if;
-- 	-- end process;

-- 	-- p_TRANSMIT	:	process(i_CLOCK, s_pixel_receive) begin
-- 	-- 	if(rising_edge(i_CLOCK)) then
-- 	-- 		if(s_TX_BUSY = '0') then
-- 	-- 			if s_pixel_receive = '1' then
-- 	-- 				s_TX_START	<=	'1';
-- 	-- 			else
-- 	-- 				s_TX_START <= '0';
-- 	-- 			end if;
-- 	-- 		else
-- 	-- 			s_TX_START <= '0';
-- 	-- 		end if;
-- 	-- 	end if;
-- 	-- end process;'

-- 	states : process(i_CLOCK)
--   	begin
-- 		if rising_edge(i_CLOCK) then
-- 			if s_RX_ENABLE = '1' then
-- 				s_TX_START <= '0';
-- 			elsif s_TX_ENABLE = '1' then
-- 				s_TX_START <= '1';
-- 				-- s_RX_START <= '0';
				
-- 			end if;
-- 		end if;
-- 	end process;

-- end behavior;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity uart is
    port (
        i_CLOCK       : in  std_logic;
        i_RX          : in  std_logic;
        o_TX          : out std_logic := '1';
        o_DATA_recv   : out std_logic_vector(7 downto 0);
        o_sig_RX_BUSY : out std_logic;
        o_sig_TX_BUSY : out std_logic;
		led1, led2, led3, led4 : out std_logic := '1';
        sevseg_data   : out sevsegdata_arr
    );
end uart;

architecture behavior of uart is

    -- Signals for UART components
    signal r_TX_DATA        : std_logic_vector(7 downto 0) := (others => '1');
    signal s_RX_START       : std_logic := '1';
    signal s_TX_START       : std_logic := '0';
    signal s_RX_BUSY        : std_logic := '0';
    signal s_TX_BUSY        : std_logic := '0';
    signal s_rx_data        : std_logic_vector(7 downto 0);
    signal s_mem            : rgbarr;
    signal s_pixel_receive  : std_logic := '0';
    signal s_pixel_transmit : std_logic := '1';

    -- Control signals
    signal s_reset          : std_logic := '0';
    signal s_RX_ENABLE      : std_logic := '1';
    signal s_TX_ENABLE      : std_logic := '0';
    signal s_idle           : std_logic;

    -- Components
    component uart_tx is
        port (
            i_CLOCK         : in  std_logic;
            i_START         : in  std_logic;
            o_BUSY          : out std_logic;
            i_RGB           : in  rgbarr;
            i_pixel_receive : in  std_logic;
            o_pixel_transmit: out std_logic;
            o_TX_LINE       : out std_logic := '1'
        );
    end component;

    component uart_rx is
        port (
            i_CLOCK         : in  std_logic;
            i_RX            : in  std_logic;
            i_START         : in  std_logic;
            o_DATA          : out std_logic_vector(7 downto 0);
            i_log_ADDR      : in  std_logic_vector(7 downto 0);
            i_pixel_transmit: in  std_logic;
            o_sig_CRRP_DATA : out std_logic := '0';
            o_BUSY          : out std_logic;
            o_pixel_receive : out std_logic;
            o_mem           : out rgbarr
        );
    end component;

    component uart_controller is
        port (
            clk        : in  std_logic;
            reset      : in  std_logic;
            rx_ready   : in  std_logic;
            tx_done    : in  std_logic;
            rx_enable  : out std_logic;
            tx_enable  : out std_logic;
            idle       : out std_logic
        );
    end component;

begin

    -- UART Receiver Instance
    u_RX : uart_rx port map (
        i_CLOCK         => i_CLOCK,
        i_RX            => i_RX,
        i_START         => s_RX_START,
        o_DATA          => s_rx_data,
        i_log_ADDR      => (others => '0'),
        i_pixel_transmit=> s_pixel_transmit,
        o_sig_CRRP_DATA => open,
        o_BUSY          => s_RX_BUSY,
        o_pixel_receive => s_pixel_receive,
        o_mem           => s_mem
    );

    -- UART Transmitter Instance
    u_TX : uart_tx port map (
        i_CLOCK         => i_CLOCK,
        i_START         => s_TX_START,
        o_BUSY          => s_TX_BUSY,
        i_RGB           => s_mem,
        i_pixel_receive => s_pixel_receive,
        o_pixel_transmit=> s_pixel_transmit,
        o_TX_LINE       => o_TX
    );

    -- UART Controller Instance
    u_Control : uart_controller port map (
        clk        => i_CLOCK,
        reset      => s_reset,
        rx_ready   => s_pixel_receive,
        tx_done    => s_pixel_transmit,
        rx_enable  => s_RX_ENABLE,
        tx_enable  => s_TX_ENABLE,
        idle       => s_idle
    );

    -- Control RX and TX start signals based on controller outputs
    process(i_CLOCK)
    begin
        if rising_edge(i_CLOCK) then
            if s_RX_ENABLE = '1' then
                s_RX_START <= '1';
                s_TX_START <= '0';
				led1 <= '0';
				led2 <= '1';
            elsif s_TX_ENABLE = '1' then
                s_TX_START <= '1';
                s_RX_START <= '0';
				led1 <= '1';
				led2 <= '0';
            else
                s_RX_START <= '0';
                s_TX_START <= '0';
				led1 <= '1';
				led2 <= '1';
				led3 <= '0';
				led4 <= '0';
            end if;
        end if;
    end process;

    -- Output Assignments
    o_DATA_recv   <= s_rx_data;
    o_sig_RX_BUSY <= s_RX_BUSY;
    o_sig_TX_BUSY <= s_TX_BUSY;
    sevseg_data   <= (
        0,
        (s_mem(0) / 100) mod 10,
        (s_mem(0) / 10) mod 10,
        (s_mem(0) / 1) mod 10
    );

end behavior;
