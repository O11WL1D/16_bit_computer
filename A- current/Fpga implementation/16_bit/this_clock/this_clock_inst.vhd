	component this_clock is
		port (
			oscena : in  std_logic := 'X'; -- oscena
			clkout : out std_logic         -- clk
		);
	end component this_clock;

	u0 : component this_clock
		port map (
			oscena => CONNECTED_TO_oscena, -- oscena.oscena
			clkout => CONNECTED_TO_clkout  -- clkout.clk
		);

