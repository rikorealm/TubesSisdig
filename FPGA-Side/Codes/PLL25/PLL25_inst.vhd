	component PLL25 is
		port (
			clk_in_clk      : in  std_logic := 'X'; -- clk
			clk_out_clk     : out std_logic;        -- clk
			clk_reset_reset : in  std_logic := 'X'  -- reset
		);
	end component PLL25;

	u0 : component PLL25
		port map (
			clk_in_clk      => CONNECTED_TO_clk_in_clk,      --    clk_in.clk
			clk_out_clk     => CONNECTED_TO_clk_out_clk,     --   clk_out.clk
			clk_reset_reset => CONNECTED_TO_clk_reset_reset  -- clk_reset.reset
		);

