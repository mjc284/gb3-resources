module mux_double(input0, input1, input2, select1, select2, out);
	input [31:0]	input0, input1, input2;
	input		select1, select2;
	output [31:0]	out;

	assign out = (select2) ? input2 : (select1) ? input1 : input0;
endmodule
