------------------------------------------------------------
---Author		:	TTA21
---Date			:	08/11/2020 , last update 01/26/2021
---Module		:	Simple UART module for serial communications.
---Description	:	This module transmits and recieves 8 bits [1 byte] at a time, allowing for simple communications with
---another external circuit.
---	UPDATE 01/26/2021 : Removed redundant code and added a log function.
---Extra			:	Many thanks to TONI [ https://www.youtube.com/watch?v=fMmcSpgOtJ4 ] for his tutorial in UART communications,
--- i learned much from him. This code is almost completely his with some differences and explanations,
---since i couldn't find his source code, i decided to upload this.

---Thanks to TONI [ https://www.youtube.com/user/AntoniusSimplus ].

---This was compiled for the " ALTERA DE-10 LITE " with the processor " MAX 10 10M50DAF484C7G ", change the pinout
---for your device.
---i_DATA connected to switches
---i_SEND connected to a button
---o_TX connected to a GPIO pin
---i_RX connected to a GPIO pin
---o_sig_CRRP_DATA can be unconnected
---o_sig_RX_BUSY can be unconnected
---o_sig_TX_BUSY can be unconnected
---o_DATA_OUT is connected to led's
---i_log_ADDR connected to switches

---Messages sent and recieved with an arduino uno TX/RX inputs and a serial console.

------------------------------------------------------------

------------------------------------------------------------
---UPDATE 01/26/2021

---	Removed redundant code and added a message log on RX, the two modules (RX/TX) can now be used alone withouth the TOP 
---connector module.
---	The log on RX works as follows:	When a new message is recieved and is not corrupted, it will be added to the atom
---bank (MEM_UART), the counter that chooses the adress is increased every message starting from zero to 255 ("11111111"),
---and repeating. The signal (o_sig_RX_BUSY) can be tracked to inform when the adress changes.
---	The address to read is not the same as the adress to write, this means any adress can be read, but none can be
---written to by the user.

---TTA21
------------------------------------------------------------

--------------- Update by: Muhammad Iqbal Arsyad
--- Kode ini sudah diubah dan disesuaikan untuk kegiatan Modul 4 Praktikum Sistem Digital

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity uart is
	port	(
				i_CLOCK		:	in std_logic							;
				-- i_DATA		:	in std_logic_vector(7 downto 0)			;	----What to send , 8 bits or 1 byte , comes from some other component
				-- i_SEND		:	in std_logic							;	----The "send data" signal , comes from some other component
				-- i_DISPLAY	:	in	std_logic							;	----The "show data" signal , comes from some other component
				-- o_TX		:	out std_logic	:='1';						----Output line
				
				i_RX		:	in std_logic							;	----Input line
				-- i_log_ADDR	:	in std_logic_vector(7 downto 0)			;	----RX has a log of 255 regs connected to DATA_OUT, choose adress here
				
				-- o_sig_CRRP_DATA		:	out std_logic					;	----Corrupted data signal
				-- o_sig_RX_BUSY		:	out std_logic					;	---	flag if RX is busy or in receiving mode.
				-- o_sig_TX_BUSY		:	out std_logic						---	flag if TX is busy or in transmitting mode.
				
				o_DATA_OUT		:	out std_logic_vector(7 downto 0)		----Message from RX, 8 bits or 1 byte
				-- o_hex			: 	out std_logic_vector(6 downto 0)		--- HEX (7 Segments) signals.
			);
end uart;


architecture behavior of uart is
	--- SIGNALS
	signal r_TX_DATA	:	std_logic_vector(7 downto 0) := (others => '1')	;	---	Register that holds the message to send
	signal s_TX_START	:	std_logic := '0'								;	---	Stored signal to begin transmission
	signal s_TX_BUSY	:	std_logic										;	---	Stored signal that reminds the main component that its sub component "TX" is busy

	signal s_rx_data	:	std_logic_vector	(7 downto 0)				;	--- RX data that read from RX Buffer
	-- signal s_hex		:	std_logic_vector	(6 downto 0)				;	--- HEX (7 Segment) signals from ASCII-HEX Converter.
	-- signal s_ascii		:	std_logic_vector	(7 downto 0)				;	--- RX data that read from RX Buffer and become input of ASCII-HEX Converter.
	
	signal s_log_addr		:	std_logic_vector (7 downto 0)	:= (others => '0')	;
	signal s_button_counter	:	integer range 0 to 50000000	:= 0					;	--- counter to delay the button pressing.
	signal s_allow_press	: std_logic	:= '0'										;	--- signal to allow the button pressed.
	
	signal o_sig_CRRP_DATA	: std_logic := '0';	---Currupted data flag
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
	
	o_DATA_OUT <= s_rx_data;
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
			
	-- 			r_TX_DATA	<=	i_DATA;									----Give subcomponent message
	-- 			s_TX_START	<=	'1';									----Tell it to transmit

	-- 		else
			
	-- 			s_TX_START <= '0';									----If Subcomponent "TX" is busy, or key is not pressed, do not send
				
	-- 		end if;	---KEY(0) = '0' and s_TX_BUSY = '0'
			
	-- 		------------------------------------------------------------
			
		
	-- 	end if;	---rising_edge(i_CLOCK)
	
	-- end process;
	
	------------------------------------------------------------

end behavior;