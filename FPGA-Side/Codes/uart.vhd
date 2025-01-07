library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart is
	port (
		i_CLOCK		:	in std_logic;
		i_DATA_send		:	in std_logic_vector(7 downto 0);
		o_TX		:	out std_logic	:='1';
		i_RX		:	in std_logic;
		o_DATA_recv		:	out std_logic_vector(7 downto 0)
		-- i_SEND		:	in std_logic;
		-- i_DISPLAY	:	in	std_logic;
		-- i_log_ADDR	:	in std_logic_vector(7 downto 0);
		-- o_sig_CRRP_DATA		:	out std_logic;
		-- o_sig_RX_BUSY		:	out std_logic;
		-- o_sig_TX_BUSY		:	out std_logic;
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
	signal o_sig_RX_BUSY   : std_logic;

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
		o_BUSY			:	out std_logic

	);
	end component;
	
begin
	
	-- --- Transmitter Module
	-- u_TX	:	uart_tx port map(
	
	-- 	i_CLOCK	=>	i_CLOCK		,
	-- 	i_START	=>	s_TX_START	,
	-- 	o_BUSY	=>	s_TX_BUSY	,
	-- 	i_DATA	=>	r_TX_DATA	,
	-- 	o_TX_LINE	=>	o_TX
	
	-- );
	
	-- --- Receiver Module
	u_RX	:	uart_rx port map(
	
		i_CLOCK				=>	i_CLOCK				,
		i_RX				=>	i_RX				,
		o_DATA				=>	s_rx_data			,
		i_log_ADDR			=>	s_log_addr			,
		o_sig_CRRP_DATA		=>	o_sig_CRRP_DATA		,
		o_BUSY				=>	o_sig_RX_BUSY
		
	);
	
	o_DATA_recv <= s_rx_data;
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

	---	The transmission sub-routine chacks for avaliability to send something before sending it,
	---everything else is handled internally.
	--- process: untuk menampilkan data di RX Buffer. alamat buffer dipilih menggunakan switch. perintah display menggunakan button key_1.
	-- p_DISPLAY_RX	:	process	(i_CLOCK) begin
	-- 	if(rising_edge(i_CLOCK)) then
	-- 		if(
	-- 			i_DISPLAY = '0' and				--- Display button is pressed
	-- 			s_allow_press = '1'				--- button is allowed to be pressed
	-- 			) then
	-- 			s_log_addr <= i_DATA;			---	set address of data that want to be display from RX buffer. 
	-- 		end if;
	-- 	end if;
	-- end process;
	-- --- end of process
	
	--- process: untuk melakukan pengiriman data. input data diatur dari switch. perintah pengiriman menggunakan button key_0.
	-- p_TRANSMIT	:	process(i_CLOCK) begin
	
	-- 	if(rising_edge(i_CLOCK)) then
	-- 		------------------------------------------------------------
		
	-- 		---	If possible, send the byte of data in the input.
	-- 		if( 
	-- 			i_SEND = '0' and 		----	Send button is pressed
	-- 			s_TX_BUSY = '0' and 	----	transmitter is not busy / not transmitting
	-- 			s_allow_press = '1'		----  	button is allowed to be pressed
	-- 			) then 					----	Send message over if subcomponent "TX" is not busy
			
	-- 			r_TX_DATA	<=	i_DATA_send;									----Give subcomponent message
	-- 			s_TX_START	<=	'1';									----Tell it to transmit

	-- 		else
			
	-- 			s_TX_START <= '0';									----If Subcomponent "TX" is busy, or key is not pressed, do not send
				
	-- 		end if;	---KEY(0) = '0' and s_TX_BUSY = '0'
			
	-- 		------------------------------------------------------------
			
		
	-- 	end if;	---rising_edge(i_CLOCK)
	
	-- end process;
	
	------------------------------------------------------------

end behavior;