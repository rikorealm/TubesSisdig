library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;
use work.t_mem_uart_pkg.all;

entity uart_rx is
	port(
		i_CLOCK			:	in std_logic;
		i_RX			:	in std_logic;
		o_DATA			:	out std_logic_vector(7 downto 0)	;
		i_log_ADDR		:	in std_logic_vector( 7 downto 0 )	;
		o_sig_CRRP_DATA	:	out std_logic := '0'			;	---Currupted data flag
		o_BUSY			:	out std_logic;
		o_mem : out wh_arr
	);
end uart_rx;


architecture behavior of uart_rx is

	signal r_PRESCALER			:	integer range 0 to 433 := 0	;----5206 = ( 50MHz[clock] / 9600[bitrate] )
	signal r_INDEX				:	integer range 0 to 9 := 0		;----Used to select bits from vector		
	signal r_DATA_BUFFER		:	std_logic_vector(9 downto 0)	;----Data register, needs to be padded with [0] on the beggining and [1] at the end
	signal s_RECIEVING_FLAG		:	std_logic := '0'				;----Signal holding the current state [ 1 if recieving, 0 if not recieving ]
		
	-- type t_MEM_UART is array ( 0 to 255 ) of std_logic_vector( 7 downto 0 );
	-- type t_MEM_UART is array (0 to 3) of std_logic_vector(7 downto 0);
	signal MEM_UART	:	t_MEM_UART;
		
	signal r_COUNTER	:	std_logic_vector( 7 downto 0 ) := ( others => '0' );

	type img_process_state is (initial, running, errored, finished);
	type parsing_state is (widthparse, heightparse, rgbparse);
	signal img_state : img_process_state := initial;
	signal parse : parsing_state := widthparse;
	
    signal wh_arr_counter : integer := 0;
    signal w_arr : wh_arr := (0, 0, 0, 0);
    signal h_arr : wh_arr := (5, 6, 7, 4);
	signal temp_arr : wh_arr := (1, 2, 3, 4);
    signal img_width : integer := 0;
    signal img_height : integer := 0;

	constant MAX_WIDTH, MAX_HEIGHT : integer := 100;
	-- rgb matrix, img matrix
	signal rgb : rgbmatrix := ((0, 0, 0), (0, 0, 0), (0, 0, 0));
	signal rgb_elcount : integer := 0;
	signal rgb_firstrun : std_logic := '1';
	signal img : imgmatrix;
	signal img_rden : std_logic := '0';
	signal img_wren : std_logic := '1';
	signal img_addr : integer range 0 to 9999 := 0;
	signal img_din : std_logic_vector(23 downto 0);
	signal img_dout : std_logic_vector(23 downto 0);
	signal img_elcount_row : integer := 0;
	signal img_elcount_col : integer := 0;
	
	attribute ramstyle : string;
	attribute ramstyle of img : signal is "M9K"; -- Use "M20K" for Stratix devices if needed.



begin
	parser :	
	process( i_CLOCK, r_DATA_BUFFER, img )
		-- variable w_arr_en : boolean := false;
    	variable h_arr_en : boolean := false;
		variable wh_parsed : boolean := false;
	begin
		if( rising_edge(i_CLOCK) ) then
			-- CREATE RESET FOR CHECKING RGBFIRSTRUN
			-- IMAGE > 1X1
			if( s_RECIEVING_FLAG = '0' and i_RX = '0' ) then
				r_INDEX <= 0;
				r_PRESCALER	<= 0;
				o_BUSY<=	'1';
				s_RECIEVING_FLAG	<=	'1';
			end if;

			if( s_RECIEVING_FLAG = '1' ) then
				r_DATA_BUFFER(r_INDEX)	<= i_RX;

				if( r_PRESCALER < 433 ) then
					r_PRESCALER	<=	r_PRESCALER + 1;
				else
					r_PRESCALER <= 0;
				end if;
				
				if( r_PRESCALER = 220 ) then
					if( r_INDEX < 9 ) then
						r_INDEX <= r_INDEX + 1;
					else	
						if( r_DATA_BUFFER(0) = '0' and r_DATA_BUFFER(9) = '1' ) then
							if (img_state = initial) then
								if (r_DATA_BUFFER(8 downto 1) = "11111111") then
									img_state <= running;
								end if;
							elsif (img_state = running) then
								if (parse = widthparse and r_DATA_BUFFER(8 downto 1) = "11111111") then
									parse <= heightparse;
									wh_arr_counter <= 0;
								elsif (parse = heightparse and r_DATA_BUFFER(8 downto 1) = "11111111") then
									if wh_parsed then
										parse <= rgbparse;
									end if;
								-- elsif (parse = pushimg and img_elcount_col >= img_width - 1 and img_elcount_row >= img_height - 1) then
								-- 	parse <= parsed;
								-- 	img_state <= finished;
								end if;
								
								case parse is
									when widthparse =>
										h_arr_en := false;
										if ((not (r_DATA_BUFFER(8 downto 1) = "11111111")) and (to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) >= 48 and to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) <= 57)) then
											if not (wh_arr_counter = 3) then
												wh_arr_counter <= wh_arr_counter + 1;
											else
												wh_arr_counter <= 0;
											end if;
											w_arr(wh_arr_counter) <= to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) - 48;
										elsif (r_DATA_BUFFER(8 downto 1) = "11111111") then
											parse <= heightparse;
										end if;
									when heightparse =>
										if ((not (r_DATA_BUFFER(8 downto 1) = "11111111")) and (to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) >= 48 and to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) <= 57)) then
											if (not (wh_arr_counter = 3)) then
												wh_arr_counter <= wh_arr_counter + 1;
											else
												wh_arr_counter <= 0;
											end if;
											h_arr(wh_arr_counter) <= to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) - 48;
											h_arr_en := true;
											wh_parsed := false;
											-- temp_arr <= (7, 0, 0, 7);
										elsif (h_arr_en = true and (r_DATA_BUFFER(8 downto 1) = "11111111")) then
											h_arr_en := false;
											wh_parsed := true;
											parse <= rgbparse;
											rgb_elcount <= 0;
											-- temp_arr <= (8, 0, 0, 8);
										end if;
									when rgbparse =>
										if (to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) >= 0 and to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) <= 255) then
											if ((rgb_elcount < 2)) then
												rgb_elcount <= rgb_elcount + 1;
												rgb_firstrun <= '0';
											else
												rgb_elcount <= 0;
											end if;
											rgb(rgb_elcount, rgb_elcount) <= to_integer(unsigned(r_DATA_BUFFER(8 downto 1)));
										end if;
								end case;
								
								
							elsif (img_state = finished) then
								img_wren <= '0';
								img_rden <= '1';

								img_addr <= (1);

								o_mem <= (
									0,
									(to_integer(unsigned(img_dout(15 downto 8))) / 100) mod 10,
									(to_integer(unsigned(img_dout(15 downto 8))) / 10) mod 10,
									(to_integer(unsigned(img_dout(15 downto 8)))) mod 10
								);
							end if;
							img_width <= 100*(w_arr(0)) + 10*(w_arr(1)) + (w_arr(2));
                    		img_height <= 100*(h_arr(0)) + 10*(h_arr(1)) + (h_arr(2));
						else 
							o_sig_CRRP_DATA	<=	'1';
						end if;
						
						s_RECIEVING_FLAG <=	'0';
						o_BUSY <= '0';
					end if;
				end if;
			end if;
			if rgb_elcount = 0 then
				img_din <= std_logic_vector(to_unsigned(rgb(0, 0), 8)) &
					std_logic_vector(to_unsigned(rgb(1, 1), 8)) &
					std_logic_vector(to_unsigned(rgb(2, 2), 8));
				-- parse <= rgbparse;
			end if;

			if (rgb_elcount = 0 and rgb_firstrun = '0' and not(img_state = finished)) then
				img_wren <= '1';
				img_rden <= '0';
				img_addr <= img_elcount_row * MAX_WIDTH + img_elcount_col;
				-- img_addr <= 0;
				
				-- img_din <= std_logic_vector(to_unsigned(5, 8))&std_logic_vector(to_unsigned(198+img_elcount_col, 8))&std_logic_vector(to_unsigned(5, 8));
				-- img_din <= "111111111111111111111111";
				-- img_state <= finished;
				-- rgb(0, 0) <= "00000000";
				if (img_elcount_col < img_width - 1) then
					img_elcount_col <= img_elcount_col + 1;
				elsif (img_elcount_col = img_width - 1) then
					img_elcount_col <= 0;
					if (img_elcount_row < img_height - 1) then
						img_elcount_row <= img_elcount_row + 1;
					elsif (img_elcount_row = img_height - 1) then
						img_state <= finished;
					end if;
				end if;
			end if;

			if img_wren = '1' then
				img(img_addr) <= img_din; -- Write data to memory
			end if;

			if img_rden = '1' then
				img_dout <= img(img_addr); -- Read data from memory
			end if;
		end if;
		o_DATA	<=	r_DATA_BUFFER(8 downto 1);
		
		-- end if;
		-- o_mem <= temp_arr;
	end process;

end behavior;