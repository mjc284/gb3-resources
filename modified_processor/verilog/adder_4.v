module adder_4(input1, out);
	input [29:0]	input1;
	output [29:0]	out;

	assign		out = input1 + 29'b1;
endmodule