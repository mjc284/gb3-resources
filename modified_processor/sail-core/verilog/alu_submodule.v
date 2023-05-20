module alu_submodule(A, B, cin, mode, cout, Out);
	input A;
	input B;
    input cin;
    input [1:0] mode;
    output cout;
    output Out;
    /* 
    mode = 0: and
    mode = 1: or
    mode = 2: add
    mode = 3: xor
    */

	wire  _and;
    wire  _xor;
    wire  _or;
    wire _add;
    wire _cout;

    assign _xor = A^B;
    assign _and = A&B;
    assign _or = A|B;
    assign _add = _xor^cin;

    assign Out = (mode == 0) ? _and :
                 (mode == 1) ? _or :
                 (mode == 2) ? _add : _xor ;

    assign cout = _and|(_xor&cin);

endmodule