library ieee;
use ieee.std_logic_1164.all;

entity ir_decoder is
    port (
		clk : in std_logic;
      	i_ir : in std_logic;
      	o_irFrame : out std_logic_vector (9 downto 0) := "0000000000"
    );
end ir_decoder;

architecture behavior of ir_decoder is
    -- States
    type state is (idle, start, decoding, finish);
    signal present_state : state := idle;
    signal next_state : state;

    -- Control signals
    signal started : std_logic := '0';
    signal decoded : std_logic := '0';
    signal failed : std_logic := '0';
    signal success : std_logic := '0';

    -- Counter signals
    signal cycleCounter : integer range 0 to 149999 := 0;
    signal NB : integer range -1 to 12 := -1;

    -- Aux signals
    signal data : std_logic_vector (11 downto 0) := "000000000000";
    signal stored : std_logic := '0';

	-- Led
	signal x_led1, x_led2, x_led3, x_led4 : std_logic := '1';
begin
    process(present_state, i_ir, started, decoded, failed, success)
	begin
		CASE present_state IS
			WHEN idle =>
                -- x_led2 <= '0';
                -- x_led3 <= '1';
                -- x_led4 <= '1';
				IF(i_ir='0' and started='0')THEN
					next_state<=start;
				ELSE
					next_state<=idle;
				END IF;
			--Empieza la cond. de inicio. 2,4ms a '1' en el emisor. Mi circuito esta en logica negada.
			WHEN start=>
                -- led2 <= '1';
                -- led3 <= '0';
                -- led4 <= '1';
				IF(i_ir='1' and started='1')THEN --Started se activa cuando ha pasado el tiempo.
					next_state<=decoding;
				ELSIF(failed='1')THEN
					next_state<=idle;
				ELSE					
					next_state<=start;
				END IF;
			--Ahora se decodifica la senal.
			WHEN decoding=>
                -- led2 <= '1';
                -- led3 <= '1';
                -- led4 <= '0';
				IF(decoded='1')THEN
					next_state<=finish;
				ELSIF(failed='1')THEN
					next_state<=idle;
				ELSE
					next_state<=decoding;
				END IF;
			--Uso next_statete next_statetado para actualizar la salida "frame".
			WHEN finish =>
                -- led2 <= '0';
                -- led3 <= '0';
                -- led4 <= '0';
				IF(success='1')THEN
					next_state<=idle;
				ELSE
					next_state<=finish;
				END IF;
			END CASE;
	end process;
			
	present_state<=next_state;

    process(clk)
    begin
        if(rising_edge(clk))then
			if(present_state=idle)then
				--Contadores a 0.
				cycleCounter<=0;
				NB<=-1;
				--Reinicio de las senales de control.
				failed<='0';
				started<='0';
				decoded<='0';
				success<='0';
				stored <='0';
			elsif(present_state=start)then
				--Comprobar que esta 2,4ms a '0'
				if(cycleCounter<120000)then
					cycleCounter<=cycleCounter+1;
					--Si la condicion de inicio se interrumpe, se para.
					if(cycleCounter<100000 and i_ir='1')then
						failed<='1';
					end if;
				else
					--Han pasado 2,4ms y la condicion de inicio se ha cumplido.
					started<='1';
					cycleCounter<=0;
					NB <= 0;
				end if;
			elsif(present_state=decoding)then
				--Lectura del dato.
				if(NB<12)then
					--Cuanto tiempo esta el led emitiendo?
					if(i_ir='0')then
						stored<='0';
						cycleCounter<=cycleCounter+1;
					else
						--Si el led ha estado mas de 1ms emitiendo, es un uno, sino, es un cero.
						if(stored='0')then
							if(NB>-1)then
								if(cycleCounter>50000)then
									data(NB)<='1';
								else
									data(NB)<='0';
								end if;
							end if;
							NB<=NB+1;
							cycleCounter<=0;
							stored<='1';
						end if;
					end if;
				else
					decoded<='1';
--					NB <= -1;
				end if;
			elsif(present_state=finish)then
				o_irFrame<=data(9 downto 0);
				success<='1';
			end if;
		end if;

    end process;

end behavior;
