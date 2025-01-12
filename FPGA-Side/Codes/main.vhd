library ieee;
use ieee.std_logic_1164.all;

package all_pkg is
    type sevsegdata_arr is array (0 to 3) of integer;
    type wh_arr is array (0 to 2) of integer; --Supports up to width and height of order < 10^4
    type rgbmatrix is array (0 to 2, 0 to 2) of integer;
	 --type imgmatrix is array (natural range <>, natural range <>) of rgbmatrix;
    type imgmatrix is array (0 to 9999) of std_logic_vector(23 downto 0);
end package;

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all_pkg.all;

entity main is
  generic(
    CLKFREQ : integer := 50000000
  );
  port (
    i_btn1, i_btn2, i_btn3, i_btn4 : in std_logic;
    i_clk : in std_logic;
    i_IR : in std_logic;
    i_Rx : in std_logic;
    -- o_sevseg : out std_logic_vector(6 downto 0);
    dig : out std_logic_vector(3 downto 0) := "0000";
    sevseg : out std_logic_vector(6 downto 0) := "1111111";

    o_led1, o_led2, o_led3, o_led4 : out std_logic := '1';
    
    o_r0, o_r1, o_r2, o_r3, o_r4, o_r5, o_r6, o_r7 : out std_logic;
    o_g0, o_g1, o_g2, o_g3, o_g4, o_g5, o_g6, o_g7 : out std_logic;
    o_b0, o_b1, o_b2, o_b3, o_b4, o_b5, o_b6, o_b7 : out std_logic;
    o_vga_hs, o_vga_vs : out std_logic;

    o_buzz : out std_logic;
    o_Tx : out std_logic
  );
end main;

architecture rtl of main is
  component controller is
    generic (
        MAXSIZE : integer := 1000
    );
    port (
        clk : in std_logic;
        ir_data : in std_logic_vector(7 downto 0);
        uart_recv : in std_logic_vector(7 downto 0);
        rx_busy : in std_logic;
        tx_busy : in std_logic;
        en_buzz : out boolean;
        source_selector : out std_logic;
        processing_state : out std_logic; -- 0 or 1
        o_led1, o_led2, o_led3, o_led4 : out std_logic := '1'
    );
end component controller;

  component clockmodifier is
    port (
      CLKIN_FREQ, CLKOUT_FREQ : in integer;
      CLKIN : in std_logic;
      CLKOUT : out std_logic
    );
  end component clockmodifier;
  
  component PLL25 is
	  port (
		  clk_in_clk      : in  std_logic;
		  clk_out_clk     : out std_logic;
		  clk_reset_reset : in  std_logic := '0'
	  );
  end component PLL25;
  
  component buzzer is
    port (
        duration : in integer;        -- durasi dalam detik
        en : in boolean;             -- sinyal enable untuk mengaktifkan buzzer
        note_clk : in std_logic;     -- sinyal clock untuk buzzer
        note_freq : in integer;
        buzz : out std_logic         -- output buzzer
    );
  end component buzzer;

  component ir_decoder is
    port (
      clk : in std_logic;
      i_ir : in std_logic;
      o_irFrame : out std_logic_vector (9 downto 0) := "0000000000"
    );
  end component ir_decoder;

  component uart is
    port (
      i_CLOCK	:	in std_logic;
		  i_DATA_send	:	in std_logic_vector(7 downto 0);
      i_RX		:	in std_logic;
		  o_TX		:	out std_logic	:= '1';
		  o_DATA_recv	:	out std_logic_vector(7 downto 0);
      o_sig_RX_BUSY		:	out std_logic;
		  o_sig_TX_BUSY		:	out std_logic;
      sevseg_data : out sevsegdata_arr
    );
  end component uart;

  component vga_sync is
    port (
      clk : in std_logic;
      HSYNC, VSYNC : out std_logic;
      source : in std_logic;
      R, G, B : out std_logic_vector(7 downto 0)
    );
  end component vga_sync;

  component sevensegment is
    port (
        i_clk : in std_logic;
        data : in sevsegdata_arr;
        dig : out std_logic_vector(3 downto 0) := "1111";
        sevseg : out std_logic_vector(6 downto 0) := "1111111"
    );
  end component sevensegment;
  
  -- component ram IS
	--   PORT
	--     (
	-- 	  address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
	-- 	  clock		: IN STD_LOGIC  := '1';
	-- 	  data		: IN STD_LOGIC_VECTOR (23 DOWNTO 0);
	-- 	  rden		: IN STD_LOGIC  := '1';
	-- 	  wren		: IN STD_LOGIC ;
	-- 	  q		: OUT STD_LOGIC_VECTOR (23 DOWNTO 0)
	--   );
  -- END component ram;


  signal ir_frame : std_logic_vector(9 downto 0);
  signal ir_data : std_logic_vector(7 downto 0);
  signal en_buzz : boolean := false;
  signal note_clk : std_logic;
  signal note_freq : integer := 1200;
  signal pllclk : std_logic;
  signal pll_reset : std_logic := '0';
  signal R, G, B : std_logic_vector(7 downto 0);

  signal processing_state : std_logic := '0'; --0: Ready, 1: Done/Stop
  signal ps_8bit : std_logic_vector(7 downto 0) := "00000000";
  signal uart_received : std_logic_vector(7 downto 0);
  signal rx_busy, tx_busy : std_logic;

  signal source_sel : std_logic := '0';
  signal sevsegdata : sevsegdata_arr;

  -- signal img_memory : img_memory_type := (others => (others => '0'));
  -- signal address_sig : std_logic_vector(7 downto 0);
  -- signal data_sig : std_logic_vector(23 downto 0);
  -- signal rden_sig : std_logic;
  -- signal wren_sig : std_logic;
  -- signal q_sig : std_logic_vector(23 downto 0);

begin
  -- ir_data <= '0'&ir_frame(7 downto 1);
  -- controller_module : controller port map(i_clk, ir_data, uart_received, rx_busy, tx_busy, en_buzz, source_sel, processing_state, o_led1, o_led2, o_led3, o_led4);
  -- ir_decoder_module : ir_decoder port map(i_clk, i_IR, ir_frame);
  -- clockmodifier_module : clockmodifier port map(CLKFREQ, note_freq, i_clk, note_clk);
  -- sevs_module : sevensegment port map(note_clk, sevsegdata, dig, sevseg);
  -- buzzer_module : buzzer port map(5, false, note_clk, note_freq, o_buzz);
  -- pll_module : PLL25 port map(i_clk, pll_reset, pllclk);
  -- vga_module : vga_sync port map(pllclk, o_vga_hs, o_vga_vs, source_sel, R, G, B);
  -- imgprocessing_module : img_proc port map();
  ps_8bit <= "0000000" & processing_state;
  uart_module : uart port map(i_clk, ps_8bit, i_Rx, o_Tx, uart_received, rx_busy, tx_busy, sevsegdata);

  -- data_sig <= uart_received&uart_received&uart_received;
  -- ram_inst : ram PORT MAP (
	-- 	address	 => address_sig,
	-- 	clock	 => i_clk,
	-- 	data	 => data_sig,
	-- 	rden	 => rden_sig,
	-- 	wren	 => wren_sig,
	-- 	q	 => q_sig
	-- );
  
  o_r0 <= R(0);
  o_r1 <= R(1);
  o_r2 <= R(2);
  o_r3 <= R(3);
  o_r4 <= R(4);
  o_r5 <= R(5);
  o_r6 <= R(6);
  o_r7 <= R(7);

  o_g0 <= G(0);
  o_g1 <= G(1);
  o_g2 <= G(2);
  o_g3 <= G(3);
  o_g4 <= G(4);  
  o_g5 <= G(5);
  o_g6 <= G(6);
  o_g7 <= G(7);

  o_b0 <= B(0);
  o_b1 <= B(1);
  o_b2 <= B(2);
  o_b3 <= B(3);
  o_b4 <= B(4);  
  o_b5 <= B(5);
  o_b6 <= B(6);
  o_b7 <= B(7);

end rtl;
