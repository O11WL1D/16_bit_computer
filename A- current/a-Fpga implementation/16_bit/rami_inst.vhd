rami_inst : rami PORT MAP (
		clken	 => clken_sig,
		clock	 => clock_sig,
		init	 => init_sig,
		dataout	 => dataout_sig,
		init_busy	 => init_busy_sig,
		ram_address	 => ram_address_sig,
		ram_wren	 => ram_wren_sig
	);
