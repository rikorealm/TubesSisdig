library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package t_mem_uart_pkg is
	type t_MEM_UART is array (0 to 3) of std_logic_vector(7 downto 0);
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;
use work.t_mem_uart_pkg.all;

entity uart is
	port (
		i_CLOCK		:	in std_logic;
		i_DATA_send		:	in std_logic_vector(7 downto 0);
		o_TX		:	out std_logic	:='1';
		i_RX		:	in std_logic;
		o_DATA_recv		:	out std_logic_vector(7 downto 0);
		-- i_SEND		:	in std_logic;
		-- i_DISPLAY	:	in	std_logic;
		-- i_log_ADDR	:	in std_logic_vector(7 downto 0);
		-- o_sig_CRRP_DATA		:	out std_logic;
		o_sig_RX_BUSY		:	out std_logic;
		o_sig_TX_BUSY		:	out std_logic;
		sevseg_data : out sevsegdata_arr
	);
end uart;


architecture behavior of uart is
	--- SIGNALS
	signal r_TX_DATA	:	std_logic_vector(7 downto 0) := (others => '1')	;
	signal s_TX_START	:	std_logic := '0'								;
	signal s_TX_BUSY	:	std_logic										;

	signal s_rx_data	:	std_logic_vector	(7 downto 0)				;
	
	signal s_log_addr		:	std_logic_vector (7 downto 0)	:= (others => '0')	;
	signal s_button_counter	:	integer range 0 to 50000000	:= 0					;
	signal s_allow_press	: std_logic	:= '0'										;
	
	signal o_sig_CRRP_DATA	: std_logic := '0';
	signal s_mem : wh_arr;
	-- signal o_sig_RX_BUSY   : std_logic;

	--- COMPONENTS
	component uart_tx is
	port(
	
		i_CLOCK	:	in std_logic							;
		i_START	:	in std_logic							;
		o_BUSY	:	out std_logic							;
		i_DATA	:	in std_logic_vector(7 downto 0)	;
		o_TX_LINE:	out std_logic	:= '1'
	
	);
	end component;
	
	component uart_rx is
	port(

		i_CLOCK			:	in std_logic								;
		i_RX			:	in std_logic								;
		o_DATA			:	out std_logic_vector(7 downto 0)			;
		i_log_ADDR		:	in std_logic_vector( 7 downto 0 )			;
		o_sig_CRRP_DATA:	out std_logic := '0'						;
		o_BUSY			:	out std_logic;
		o_mem : out wh_arr
	);
	end component;
	
begin
	
	--- Transmitter Module
	u_TX	:	uart_tx port map(
	
		i_CLOCK	=>	i_CLOCK		,
		i_START	=>	s_TX_START	,
		o_BUSY	=>	s_TX_BUSY	,
		i_DATA	=>	r_TX_DATA	,
		o_TX_LINE	=>	o_TX
	);

	o_sig_TX_BUSY <= s_TX_BUSY;
	
	--- Receiver Module
	u_RX	:	uart_rx port map(
	
		i_CLOCK				=>	i_CLOCK				,
		i_RX				=>	i_RX				,
		o_DATA				=>	s_rx_data			,
		i_log_ADDR			=>	s_log_addr			,
		o_sig_CRRP_DATA		=>	o_sig_CRRP_DATA		,
		o_BUSY				=>	o_sig_RX_BUSY,
		o_mem => s_mem
	);
	
	o_DATA_recv <= s_rx_data;
	sevseg_data <= (
		s_mem(0), s_mem(1), s_mem(2), s_mem(3)
	);
	-- sevseg_data <= (
	-- 	to_integer(unsigned(s_mem(0))) - 48,
	-- 	to_integer(unsigned(s_mem(1))) - 48,
	-- 	to_integer(unsigned(s_mem(2))) - 48,
	-- 	to_integer(unsigned(s_mem(3))) - 48
	-- );
	-- sevseg_data <= s_mem;

	-- p_button		:	process(i_CLOCK) begin
	-- 	if(rising_edge(i_CLOCK)) then
	-- 		if(s_button_counter = 49999900) then
	-- 			s_button_counter <= 0;
	-- 			s_allow_press <= '1';
	-- 		else
	-- 			s_button_counter <= s_button_counter + 1;
	-- 			s_allow_press <= '0';
	-- 		end if;
	-- 	end if;
	-- end process;
	-- - end of delay process

	-- getWidthHeight	:	process	(i_CLOCK) begin
	-- 	if(rising_edge(i_CLOCK)) then
			
	-- 	end if;
	-- end process;
	
	--- process: untuk melakukan pengiriman data. input data diatur dari switch. perintah pengiriman menggunakan button key_0.
	p_TRANSMIT	:	process(i_CLOCK) begin
		if(rising_edge(i_CLOCK)) then
			if(s_TX_BUSY = '0') then
				r_TX_DATA	<=	i_DATA_send;
				s_TX_START	<=	'1';
			else
				s_TX_START <= '0';
			end if;
		end if;	---rising_edge(i_CLOCK)
	
	end process;

end behavior;