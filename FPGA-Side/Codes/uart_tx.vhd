library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity uart_tx is
	port (
		i_CLOCK	:	in std_logic;
		i_START	:	in std_logic;
		i_DATA	:	in img_mem;
		o_BUSY	:	out std_logic;
		i_pixel_receive : in std_logic;
		o_pixel_transmit : out std_logic := '0';
		o_TX_LINE:	out std_logic :='1'
	);
end uart_tx;

architecture behavior of uart_tx is

	signal r_PRESCALER					:	integer range 0 to 5207 := 0					;----5206 = ( 50MHz[clock] / 9600[bitrate] )
	signal r_INDEX						:	integer range 0 to 9 := 0						;----Used to select bits from vector		
	signal r_DATA_BUFFER				:	std_logic_vector(9 downto 0) := (others => '1')	;----Data register, needs to be padded with [0] on the beggining and [1] at the end
	signal s_TRANSMITING_FLAG			:	std_logic := '0'								;----Signal holding the current state [ 1 if transmitting, 0 if not transmitting ]
	
	signal pixval_ctr : integer range 0 to 2 := 0;
	signal pixel_transmit : std_logic := '0';

	signal addr : integer range -1 to 63 := -1;
	signal firstrun : std_logic := '0';

begin
	process(i_CLOCK, i_pixel_receive) 
	begin
		if rising_edge(i_CLOCK) then
			if addr < 63 then
				if (s_TRANSMITING_FLAG = '0' and i_START = '1') then
					r_DATA_BUFFER(0)                <= '0';
					r_DATA_BUFFER(9)                <= '1';
					s_TRANSMITING_FLAG              <= '1';
					o_BUSY                          <= '1';
					
					if pixval_ctr = 0 then
						r_DATA_BUFFER(8 downto 1)       <= i_DATA(addr+1)(23 downto 16);
					elsif pixval_ctr = 1 then
						r_DATA_BUFFER(8 downto 1)       <= i_DATA(addr+1)(15 downto 8);
					elsif pixval_ctr = 2 then
						r_DATA_BUFFER(8 downto 1)       <= i_DATA(addr+1)(7 downto 0);
					end if;

				elsif (s_TRANSMITING_FLAG = '1') then
					if (r_PRESCALER < 5207) then
						r_PRESCALER <= r_PRESCALER + 1;
					else
						r_PRESCALER <= 0;
					end if;

					if (r_PRESCALER = 2607) then
						o_TX_LINE <= r_DATA_BUFFER(r_INDEX);
						if (r_INDEX < 9) then
							r_INDEX <= r_INDEX + 1;
						else
							r_INDEX                 <= 0;
							s_TRANSMITING_FLAG      <= '0';
							o_BUSY                  <= '0';
							if pixval_ctr < 2 then
								pixval_ctr <= pixval_ctr + 1;
							else
								pixval_ctr <= 0;
								addr <= addr + 1;
							end if;
						end if;
					end if;
				end if;

			else
				pixel_transmit <= '1';
			end if;
		end if;

		o_pixel_transmit <= pixel_transmit;
	end process;

end behavior;