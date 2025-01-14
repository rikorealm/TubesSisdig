library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity uart is
	generic (
		-- PictureMaxSize : std_logic_vector(18 downto 0) := "1001011000000000000"
		-- PictureMaxSize : std_logic_vector(13 downto 0) := "10011100010000"
		PictureMaxSize : std_logic_vector(1 downto 0) := "11"
	);
    port (
        i_CLOCK       : in  std_logic;
        i_RX          : in  std_logic;
		i_ADDR		  : in  std_logic_vector(5 downto 0);
		i_processing  : in 	std_logic;
		i_image		  : in img_mem;
        i_send        : in std_logic;
        o_TX          : out std_logic := '1';
        o_image		  : out img_mem;
        o_sig_RX_BUSY : out std_logic;
        o_sig_TX_BUSY : out std_logic;
		o_img_received : out std_logic;
        o_img_transmitted : out std_logic := '0';
        sevseg_data   : out sevsegdata_arr
    );
end uart;

architecture behavior of uart is

    -- Signals for UART components
    signal s_RX_START       : std_logic := '1';
    signal s_TX_START       : std_logic := '0';
    signal s_RX_BUSY        : std_logic := '0';
    signal s_TX_BUSY        : std_logic := '0';
    signal s_rx_data        : img_mem;
	signal s_tx_data		: std_logic_vector(7 downto 0) := (others => '1');
    
    signal s_pixel_receive  : std_logic := '0';
    signal s_pixel_transmit : std_logic := '0';

	signal s_mem : std_logic_vector(7 downto 0) := (others => '0');

	signal s_mem_addr : integer range 0 to 63 := 0;

	signal pixval_count : integer range 0 to 2 := 0;

    -- Components
    component uart_tx is
        port (
            i_CLOCK         : in  std_logic;
            i_START         : in  std_logic;
			i_DATA			: in  img_mem;
            o_BUSY          : out std_logic;
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
            o_DATA			: out img_mem;
			i_log_ADDR		: in  std_logic_vector(5 downto 0);
            i_pixel_transmit: in  std_logic;
            o_sig_CRRP_DATA : out std_logic := '0';
            o_BUSY          : out std_logic;
            o_pixel_receive : out std_logic
        );
    end component;

	

begin
	
    -- UART Receiver Instance
    u_RX : uart_rx port map (
        i_CLOCK         => i_CLOCK,
        i_RX            => i_RX,
        i_START         => s_RX_START,
        o_DATA          => s_rx_data,
        i_log_ADDR      => i_ADDR,
        i_pixel_transmit=> s_pixel_transmit,
        o_sig_CRRP_DATA => open,
        o_BUSY          => s_RX_BUSY,
        o_pixel_receive => s_pixel_receive
    );

    -- -- UART Transmitter Instance
    u_TX : uart_tx port map (
        i_CLOCK         => i_CLOCK,
        i_START         => s_TX_START,
		i_DATA			=> i_image,
        o_BUSY          => s_TX_BUSY,
        i_pixel_receive => s_pixel_receive,
        o_pixel_transmit=> s_pixel_transmit,
        o_TX_LINE       => o_TX
    );

    o_sig_RX_BUSY <= s_RX_BUSY;
    o_sig_TX_BUSY <= s_TX_BUSY;

	o_img_received <= s_pixel_receive;
    o_img_transmitted <= s_pixel_transmit;

    o_image <= s_rx_data;

    sevseg_data <= (
        0,
        to_integer(unsigned(i_image(0)(23 downto 16))) / 100 mod 10,
        to_integer(unsigned(i_image(0)(15 downto 8))) / 10 mod 10,
        to_integer(unsigned(i_image(0)(7 downto 0))) mod 10
    );

    transmission : process(i_CLOCK, i_image, i_processing, pixval_count)
    begin
		if rising_edge(i_CLOCK) then
			if s_TX_BUSY = '0' and i_processing = '1' and i_send = '0' and s_pixel_transmit = '0' then
                s_TX_START <= '1';
			else
				s_TX_START <= '0';
			end if;	
		end if;
	end process;
	
end behavior;
