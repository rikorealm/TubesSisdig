library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity uart_rx is
	port(
		i_CLOCK			:	in std_logic;
		i_RX			:	in std_logic;
		i_START 		:   in std_logic := '1';
		o_DATA			:	out img_mem;
		i_log_ADDR		:	in std_logic_vector(5 downto 0 );
		i_pixel_transmit:   in std_logic := '1';
		o_sig_CRRP_DATA	:	out std_logic := '0';	---Currupted data flag
		o_BUSY			:	out std_logic := '0';
		o_pixel_receive : 	out std_logic := '0'
	);
end uart_rx;


architecture behavior of uart_rx is

	signal r_PRESCALER			:	integer range 0 to 433 := 0	;----433 = ( 50MHz[clock] / 115200[bitrate] )
	signal r_INDEX				:	integer range 0 to 9 := 0		;----Used to select bits from vector		
	signal r_DATA_BUFFER		:	std_logic_vector(9 downto 0)	;----Data register, needs to be padded with [0] on the beggining and [1] at the end
	signal s_RECIEVING_FLAG		:	std_logic := '0'				;----Signal holding the current state [ 1 if recieving, 0 if not recieving ]
	
	signal r_COUNTER	:	std_logic_vector( 7 downto 0 ) := ( others => '0');

	-- 8x8 pict
	signal r_MEM : img_mem;
	
	signal rgb_elcount : integer range 0 to 2 := 0;
	signal rgb : rgbarr := (0, 0, 0);
	signal finalrgb : rgbarr;

	signal mem_addr : integer range -1 to 63 := -1;
	signal isFirstRun : std_logic := '1';

begin
	process( i_CLOCK, r_MEM, i_log_ADDR )
	begin
		if( rising_edge(i_CLOCK) ) then
			if( s_RECIEVING_FLAG = '0' and i_RX = '0') then
				r_INDEX <= 0;
				r_PRESCALER	<= 0;
				o_BUSY <=	'1';
				s_RECIEVING_FLAG	<=	'1';
			end if;

			if( s_RECIEVING_FLAG = '1') then
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
							if (to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) >= 0 and to_integer(unsigned(r_DATA_BUFFER(8 downto 1))) <= 255) then
								if ((rgb_elcount < 2)) then
									rgb_elcount <= rgb_elcount + 1;
								else
									rgb_elcount <= 0;
									isFirstRun <= '0';
									mem_addr <= mem_addr + 1;
								end if;
								rgb(rgb_elcount) <= to_integer(unsigned(r_DATA_BUFFER(8 downto 1)));
							end if;								
						else 
							o_sig_CRRP_DATA	<=	'1';
						end if;
						s_RECIEVING_FLAG <=	'0';
						o_BUSY <= '0';
					end if;
				end if;
			-- else
				
			end if;

			if rgb_elcount = 0 and isFirstRun = '0' then
				r_MEM(mem_addr) <= 
					std_logic_vector(to_unsigned(rgb(0), 8))
					&
					std_logic_vector(to_unsigned(rgb(1), 8))
					&
					std_logic_vector(to_unsigned(rgb(2), 8));
				if mem_addr >= 63 then
					o_pixel_receive <= '1';
				-- else
				-- 	o_pixel_receive <= '0';
				end if;
			end if;
			
		end if;

		o_DATA	<= r_MEM;
		-- o_mem <= rgb;
	end process;
end behavior;