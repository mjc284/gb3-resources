module mux_control(input0, select1, select2, out);
	input [31:0]	input0;
	input		select1, select2;
	output [31:0]	out;

	assign out = (select1 | select2) ? 32'b0 : input0;
endmodule