/*
 *		Branch Predictor FSM
 */

module branch_predictor_1(
		clk,
		actual_branch_decision,
		branch_decode_sig,
		branch_mem_sig,
		in_addr,
		offset,
		branch_type,
		branch_addr,
		prediction
	);

	/*
	 *	inputs
	 */
	input		clk;
	input		actual_branch_decision;
	input		branch_decode_sig;
	input		branch_mem_sig;
	input [31:0]	in_addr;
	input [31:0]	offset;
	input [2:0]	branch_type;

	/*
	 *	outputs
	 */
	output [29:0]	branch_addr;
	output		prediction;

	/*
	 *	internal states
	 */
	reg [1:0]	s [5:0]; // 6 2-bit registers, one for each branch instruction type
	
	reg		branch_mem_sig_reg;
	reg [2:0]	type_reg0, type_reg1; // registers to store branch instruction types  	
	integer 	type_out = type_reg1; // integer signal connected to output of type_reg1	
	integer		type_in = branch_type; // integer signal connected to the input port branch_type

	/*
	 *	The `initial` statement below uses Yosys's support for nonzero
	 *	initial values:
	 *
	 *		https://github.com/YosysHQ/yosys/commit/0793f1b196df536975a044a4ce53025c81d00c7f
	 *
	 *	Rather than using this simulation construct (`initial`),
	 *	the design should instead use a reset signal going to
	 *	modules in the design and to thereby set the values.
	 */
	initial begin
		s[5] = 2'b00;
		s[4] = 2'b00;
		s[3] = 2'b00;
		s[2] = 2'b00;
		s[1] = 2'b00;
		s[0] = 2'b00;
		branch_mem_sig_reg = 1'b0;
		type_reg1 = 3'b000;
		type_reg0 = 3'b000;
	end

	always @(negedge clk) begin
		branch_mem_sig_reg <= branch_mem_sig;
	end

	/*
	 *	Using this microarchitecture, branches can't occur consecutively
	 *	therefore can use branch_mem_sig as every branch is followed by
	 *	a bubble, so a 0 to 1 transition
	 */
	always @(posedge clk) begin
		type_reg1= type_reg0;
		type_reg0 = branch_type;
		if (branch_mem_sig_reg) begin
			s[type_out][1] <= (s[type_out][1]&s[type_out][0]) | (s[type_out][0]&actual_branch_decision) | (s[type_out][1]&actual_branch_decision);
			s[type_out][0] <= (s[type_out][1]&(!s[type_out][0])) | ((!s[type_out][0])&actual_branch_decision) | (s[type_out][1]&actual_branch_decision);
		end
	end

	assign branch_addr = in_addr[31:2] + offset[31:2];
	assign prediction = s[type_in][1] & branch_decode_sig;
endmodule