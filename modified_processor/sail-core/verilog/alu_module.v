module alu_module(mode, A, B, Out);
	input [3:0]		mode;
	input [31:0]		A;
	input [31:0]		B;
	output [31:0]	Out;

 /* 
    mode = 0: and
    mode = 1: or
    mode = 2: add
    mode = 3: xor
    mode = 4: sub
*/

    wire XOR = mode[3]&!mode[1]&!mode[0];
    wire SLT = !mode[3]&mode[2]&mode[1]&mode[0];
    wire CSRRS = mode[3]&mode[1]&!mode[0];
    wire CSRRC = mode[3]&mode[1]&mode[0];
    wire [1:0] alu_mode;
    assign alu_mode = XOR ? 2'b11: //XOR
                      SLT ? 2'b10: //SUB
                      CSRRS ? 2'b01: //CSRRS (OR)
                      CSRRC ? 2'b00: //CSRRC (AND)
                      mode[1:0];
    
    wire [31:0] a = CSRRC ? ~A : A;
    
    wire c1 = mode[2];
    wire [31:0] carry;
    wire [31:0] b = c1 ? ~B : B;

    //wire [31:0] out;
    
    alu_submodule alu_submodule_inst01 (.A(a[ 0]), .B(b[ 0]), .cin(c1)       , .mode(alu_mode[1:0]), .cout(carry[ 0]), .Out(Out[ 0]));
    alu_submodule alu_submodule_inst02 (.A(a[ 1]), .B(b[ 1]), .cin(carry[ 0]), .mode(alu_mode[1:0]), .cout(carry[ 1]), .Out(Out[ 1]));
    alu_submodule alu_submodule_inst03 (.A(a[ 2]), .B(b[ 2]), .cin(carry[ 1]), .mode(alu_mode[1:0]), .cout(carry[ 2]), .Out(Out[ 2]));
    alu_submodule alu_submodule_inst04 (.A(a[ 3]), .B(b[ 3]), .cin(carry[ 2]), .mode(alu_mode[1:0]), .cout(carry[ 3]), .Out(Out[ 3]));
    alu_submodule alu_submodule_inst05 (.A(a[ 4]), .B(b[ 4]), .cin(carry[ 3]), .mode(alu_mode[1:0]), .cout(carry[ 4]), .Out(Out[ 4]));
    alu_submodule alu_submodule_inst06 (.A(a[ 5]), .B(b[ 5]), .cin(carry[ 4]), .mode(alu_mode[1:0]), .cout(carry[ 5]), .Out(Out[ 5]));
    alu_submodule alu_submodule_inst07 (.A(a[ 6]), .B(b[ 6]), .cin(carry[ 5]), .mode(alu_mode[1:0]), .cout(carry[ 6]), .Out(Out[ 6]));
    alu_submodule alu_submodule_inst08 (.A(a[ 7]), .B(b[ 7]), .cin(carry[ 6]), .mode(alu_mode[1:0]), .cout(carry[ 7]), .Out(Out[ 7]));
    alu_submodule alu_submodule_inst09 (.A(a[ 8]), .B(b[ 8]), .cin(carry[ 7]), .mode(alu_mode[1:0]), .cout(carry[ 8]), .Out(Out[ 8]));
    alu_submodule alu_submodule_inst10 (.A(a[ 9]), .B(b[ 9]), .cin(carry[ 8]), .mode(alu_mode[1:0]), .cout(carry[ 9]), .Out(Out[ 9]));
    alu_submodule alu_submodule_inst11 (.A(a[10]), .B(b[10]), .cin(carry[ 9]), .mode(alu_mode[1:0]), .cout(carry[10]), .Out(Out[10]));
    alu_submodule alu_submodule_inst12 (.A(a[11]), .B(b[11]), .cin(carry[10]), .mode(alu_mode[1:0]), .cout(carry[11]), .Out(Out[11]));
    alu_submodule alu_submodule_inst13 (.A(a[12]), .B(b[12]), .cin(carry[11]), .mode(alu_mode[1:0]), .cout(carry[12]), .Out(Out[12]));
    alu_submodule alu_submodule_inst14 (.A(a[13]), .B(b[13]), .cin(carry[12]), .mode(alu_mode[1:0]), .cout(carry[13]), .Out(Out[13]));
    alu_submodule alu_submodule_inst15 (.A(a[14]), .B(b[14]), .cin(carry[13]), .mode(alu_mode[1:0]), .cout(carry[14]), .Out(Out[14]));
    alu_submodule alu_submodule_inst16 (.A(a[15]), .B(b[15]), .cin(carry[14]), .mode(alu_mode[1:0]), .cout(carry[15]), .Out(Out[15]));
    alu_submodule alu_submodule_inst17 (.A(a[16]), .B(b[16]), .cin(carry[15]), .mode(alu_mode[1:0]), .cout(carry[16]), .Out(Out[16]));
    alu_submodule alu_submodule_inst18 (.A(a[17]), .B(b[17]), .cin(carry[16]), .mode(alu_mode[1:0]), .cout(carry[17]), .Out(Out[17]));
    alu_submodule alu_submodule_inst19 (.A(a[18]), .B(b[18]), .cin(carry[17]), .mode(alu_mode[1:0]), .cout(carry[18]), .Out(Out[18]));
    alu_submodule alu_submodule_inst20 (.A(a[19]), .B(b[19]), .cin(carry[18]), .mode(alu_mode[1:0]), .cout(carry[19]), .Out(Out[19]));
    alu_submodule alu_submodule_inst21 (.A(a[20]), .B(b[20]), .cin(carry[19]), .mode(alu_mode[1:0]), .cout(carry[20]), .Out(Out[20]));
    alu_submodule alu_submodule_inst22 (.A(a[21]), .B(b[21]), .cin(carry[20]), .mode(alu_mode[1:0]), .cout(carry[21]), .Out(Out[21]));
    alu_submodule alu_submodule_inst23 (.A(a[22]), .B(b[22]), .cin(carry[21]), .mode(alu_mode[1:0]), .cout(carry[22]), .Out(Out[22]));
    alu_submodule alu_submodule_inst24 (.A(a[23]), .B(b[23]), .cin(carry[22]), .mode(alu_mode[1:0]), .cout(carry[23]), .Out(Out[23]));
    alu_submodule alu_submodule_inst25 (.A(a[24]), .B(b[24]), .cin(carry[23]), .mode(alu_mode[1:0]), .cout(carry[24]), .Out(Out[24]));
    alu_submodule alu_submodule_inst26 (.A(a[25]), .B(b[25]), .cin(carry[24]), .mode(alu_mode[1:0]), .cout(carry[25]), .Out(Out[25]));
    alu_submodule alu_submodule_inst27 (.A(a[26]), .B(b[26]), .cin(carry[25]), .mode(alu_mode[1:0]), .cout(carry[26]), .Out(Out[26]));
    alu_submodule alu_submodule_inst28 (.A(a[27]), .B(b[27]), .cin(carry[26]), .mode(alu_mode[1:0]), .cout(carry[27]), .Out(Out[27]));
    alu_submodule alu_submodule_inst29 (.A(a[28]), .B(b[28]), .cin(carry[27]), .mode(alu_mode[1:0]), .cout(carry[28]), .Out(Out[28]));
    alu_submodule alu_submodule_inst30 (.A(a[29]), .B(b[29]), .cin(carry[28]), .mode(alu_mode[1:0]), .cout(carry[29]), .Out(Out[29]));
    alu_submodule alu_submodule_inst31 (.A(a[30]), .B(b[30]), .cin(carry[29]), .mode(alu_mode[1:0]), .cout(carry[30]), .Out(Out[30]));
    alu_submodule alu_submodule_inst32 (.A(a[31]), .B(b[31]), .cin(carry[30]), .mode(alu_mode[1:0]), .cout(carry[31]), .Out(Out[31]));

    //assign Out = SLT ? {31'b0, out[31]} : out;
endmodule