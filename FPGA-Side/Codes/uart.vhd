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
        o_TX          : out std_logic := '1';
        o_DATA_recv   : out img_mem;
        o_sig_RX_BUSY : out std_logic;
        o_sig_TX_BUSY : out std_logic;
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

    -- Components
    component uart_tx is
        port (
            i_CLOCK         : in  std_logic;
            i_START         : in  std_logic;
			i_DATA			: in std_logic_vector(7 downto 0);
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
        o_DATA          => o_DATA_recv,
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
		i_DATA			=> s_tx_data,
        o_BUSY          => s_TX_BUSY,
        i_pixel_receive => s_pixel_receive,
        o_pixel_transmit=> s_pixel_transmit,
        o_TX_LINE       => o_TX
    );

	-- getPixel : process(i_CLOCK)
	-- begin
	-- 	if rising_edge(i_CLOCK) then

	-- 	end if;
	-- end process;

    -- o_DATA_recv   <= s_rx_data;
    o_sig_RX_BUSY <= s_RX_BUSY;
    o_sig_TX_BUSY <= s_TX_BUSY;

    transmission : process(i_CLOCK)
    begin
		if rising_edge(i_CLOCK) then
			-- if Sendi calc ok, proceed
			-- Increm idx for s_tx_data (data yg perlu dikirim, 8 bit), ambil datanya dari signal baru dgn jenis imgmem, data baru ini dikirim dari multiplier sendi
		end if;
	end process;
	
end behavior;
