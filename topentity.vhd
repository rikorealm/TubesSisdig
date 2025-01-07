library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity top is
    generic (
        CLKFREQ : integer := 50000000
    );
    port (
        i_btn1, i_btn2, i_btn3, i_btn4 : in std_logic;
        i_clk : in std_logic;
        i_ir : in std_logic;
        i_Rx : in std_logic;
        o_sevseg : out std_logic_vector(6 downto 0);
        dig : out std_logic := '0';
        o_led1, o_led2, o_led3, o_led4 : out std_logic := '1';
        o_buzz : out std_logic;
        o_Tx : out std_logic
    );
end top;

architecture rtl of top is
    component clockmodifier is
        port (
            CLKIN_FREQ : integer;
            CLKOUT_FREQ : integer;
            Clk_in : in std_logic;
            Clk_out : out std_logic
        );
    end component;
    component io is
        port (
            i_btn1, i_btn2, i_btn3, i_btn4 : in std_logic;
            i_clk : in std_logic;
            o_led1, o_led2, o_led3, o_led4 : out std_logic;
            o_num : buffer integer;
            o_notefreq : buffer integer
        );
    end component;
    component buzzer is
        port (
            freq : in std_logic;
            led : out std_logic;
            o_buzz : buffer std_logic
        );
    end component;
    component sevenseg_decoder is
        port (
            i_ascii : in std_logic_vector(7 downto 0);
            o_sevenseg : buffer std_logic_vector(6 downto 0)
        );
    end component;
    component ir_decoder is
        port (
            clk : in std_logic;
            irSignal : in std_logic;
            frame : out std_logic_vector(9 downto 0) := "0000000000";
            mode_selection : buffer integer;
            led1, led2, led3, led4 : out std_logic
        );
    end component;
    -- component uart is
    --     port(
    --         i_CLOCK		  :	in std_logic;
    --         i_DATA		  :	in std_logic_vector(7 downto 0);
	-- 		i_SEND  	  :	in std_logic;
    --         o_TX		  :	out std_logic :='1'
    --     );
    -- end component;

    component uart is
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
    end component;
    signal clk_4hz, clk_note : std_logic;
    signal num : integer := 0;
    signal NOTE_FREQ : integer;
    signal a, b : std_logic;
    signal ir_frame : std_logic_vector(9 downto 0);
    signal uart_data : std_logic_vector(7 downto 0);
	signal dummy : std_logic_vector(9 downto 0);
    signal curr_mode : integer := 0;
    signal led1, led2, led3, led4 : std_logic := '1';
    signal rcvnum : std_logic_vector(7 downto 0);
begin
    -- out freq * 2
    -- fourhz_clk_mod : clockmodifier port map(CLKFREQ, 20, i_clk, clk_4hz);
    -- noteshz_clk_mod : clockmodifier port map(CLKFREQ, NOTE_FREQ*100, i_clk, clk_note);
    -- io_module : io port map(i_btn1, i_btn2, i_btn3, i_btn4, clk_4hz, o_led1, o_led2, o_led3, a, num, NOTE_FREQ);
    -- buzzer_module : buzzer port map(clk_note, b, o_buzz);
    sevseg_module : sevenseg_decoder port map(rcvnum, o_sevseg);
    -- o_led4 <= b;
    
    -- ir_dec : ir_decoder port map(i_clk, i_ir, ir_frame, curr_mode, led1, led2, led3, led4);
    -- dummy <= "0011010111";
	--  uart_data <= '0'&ir_frame(7 downto 1);
    -- uart_mod : uart port map(i_clk, uart_data, i_btn1, o_Tx);
    -- num <= (to_integer(unsigned(rcvnum)) - 30);
    uart_module : uart port map(i_clk, i_Rx, rcvnum);

    o_led1 <= rcvnum(7);
    o_led2 <= rcvnum(6);
    o_led3 <= rcvnum(0);
    o_led4 <= rcvnum(1);

end architecture;
