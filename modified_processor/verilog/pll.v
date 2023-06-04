module pll(
	input  clk_in,
	output clk_out,
	output locked
	);

SB_PLL40_PAD #(
		.FEEDBACK_PATH("SIMPLE"),
		.DIVR(4'd1),		// DIVR = 1
		.DIVF(7'd100),	    // DIVF = 100
		.DIVQ(3'd5),		// DIVQ = 5  
		.FILTER_RANGE(3'b001)	// FILTER_RANGE = 1
	) uut (
		.LOCK(locked),      // Indicates if PLL is locked
		.RESETB(1'b1),
		.BYPASS(1'b0),
		.PACKAGEPIN(clk_in),
		.PLLOUTCORE(clk_out)
		);


endmodule