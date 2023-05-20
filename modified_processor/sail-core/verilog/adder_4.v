module adder_4(input1, out);
	input [31:0]	input1;
	output [31:0]	out;

	assign		out = input1 + 32'b100;
endmodule