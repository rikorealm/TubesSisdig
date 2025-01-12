library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity uart_tx is
	port (
		i_CLOCK	:	in std_logic;
		i_START	:	in std_logic;
		o_BUSY	:	out std_logic;
		i_pixel_receive : in std_logic;
		o_pixel_transmit : out std_logic := '0';
		o_TX_LINE:	out std_logic :='1'
	);
end uart_tx;

architecture behavior of uart_tx is

	signal r_PRESCALER					:	integer range 0 to 433 := 0					;----5206 = ( 50MHz[clock] / 9600[bitrate] )
	signal r_INDEX						:	integer range 0 to 9 := 0						;----Used to select bits from vector		
	signal r_DATA_BUFFER				:	std_logic_vector(9 downto 0) := (others => '1')	;----Data register, needs to be padded with [0] on the beggining and [1] at the end
	signal s_TRANSMITING_FLAG			:	std_logic := '0'								;----Signal holding the current state [ 1 if transmitting, 0 if not transmitting ]
	
	signal pixval_ctr : integer range 0 to 2 := 0;
	signal pixel_transmit : std_logic := '0';

begin
	process(i_CLOCK, i_pixel_receive) 
	begin
		if rising_edge(i_CLOCK) then
			if (s_TRANSMITING_FLAG = '0' and i_START = '1') then
				r_DATA_BUFFER(0)                <= '0';
				r_DATA_BUFFER(9)                <= '1';
				r_DATA_BUFFER(8 downto 1)       <= "11111111";
				s_TRANSMITING_FLAG              <= '1';
				o_BUSY                          <= '1';
				
				if i_pixel_receive = '1' and pixel_transmit = '1' then
					pixel_transmit <= '0';
				end if;

			elsif (s_TRANSMITING_FLAG = '1') then
				if (r_PRESCALER < 433) then
					r_PRESCALER <= r_PRESCALER + 1;
				else
					r_PRESCALER <= 0;
				end if;

				if (r_PRESCALER = 220) then
					o_TX_LINE <= r_DATA_BUFFER(r_INDEX);
					if (r_INDEX < 9) then
						r_INDEX <= r_INDEX + 1;
					else
						r_INDEX                 <= 0;
						s_TRANSMITING_FLAG      <= '0';
						o_BUSY                  <= '0';
						if (pixval_ctr < 2) then
							pixval_ctr <= pixval_ctr + 1;
							-- pixel_transmit <= '0';
						else
							pixval_ctr <= 0;
							pixel_transmit <= '1';
						end if;
						-- Update r_DATA_BUFFER immediately when pixval_ctr changes
						-- r_DATA_BUFFER(8 downto 1) <= std_logic_vector(to_unsigned(i_RGB(pixval_ctr), 8));
						r_DATA_BUFFER(8 downto 1) <= "11111111";
					end if;
				end if;
			end if;

			o_pixel_transmit <= pixel_transmit;
		end if;
	end process;

end behavior;