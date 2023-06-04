module dsp(input1, input2, addorsub, out);
	input [31:0]	input1;
	input [31:0]	input2;
	input		addorsub;
	output [31:0]	out;
	
	wire co;
	
	SB_MAC16 i_sbmac16 ( // port interfaces
		.A(input1[31:16]),
		.B(input1[15:0]),
		.C(input2[31:16]),
		.D(input2[15:0]),
		.O(out),
		.CLK(1'b0),
		.CE(1'b1),
		.IRSTTOP(1'b0),
		.IRSTBOT(1'b0),
		.ORSTTOP(1'b0),
		.ORSTBOT(1'b0),
		.AHOLD(1'b0),
		.BHOLD(1'b0),
		.CHOLD(1'b0),
		.DHOLD(1'b0),
		.OHOLDTOP(1'b0),
		.OHOLDBOT(1'b0),
		.OLOADTOP(1'b0),
		.OLOADBOT(1'b0),
		.ADDSUBTOP(addorsub),
		.ADDSUBBOT(addorsub),
		.CO(co),
		.CI(1'b0),
		.ACCUMCI(),
		.ACCUMCO(),
		.SIGNEXTIN(),
		.SIGNEXTOUT()
	);
	
	
	defparam i_sbmac16.B_SIGNED = 1'b0; 
	defparam i_sbmac16.A_SIGNED = 1'b0; 
	defparam i_sbmac16.MODE_8x8 = 1'b1; 
	defparam i_sbmac16.BOTADDSUB_CARRYSELECT = 2'b00;
	defparam i_sbmac16.BOTADDSUB_UPPERINPUT = 1'b1;
	defparam i_sbmac16.BOTADDSUB_LOWERINPUT = 2'b00;
	defparam i_sbmac16.BOTOUTPUT_SELECT = 2'b00;
	defparam i_sbmac16.TOPADDSUB_CARRYSELECT = 2'b10;
	defparam i_sbmac16.TOPADDSUB_UPPERINPUT = 1'b1;
	defparam i_sbmac16.TOPADDSUB_LOWERINPUT = 2'b00;
	defparam i_sbmac16.TOPOUTPUT_SELECT = 2'b00;
	defparam i_sbmac16.PIPELINE_16x16_MULT_REG2 = 1'b0;
	defparam i_sbmac16.PIPELINE_16x16_MULT_REG2 = 1'b0;
	defparam i_sbmac16.BOT_8x8_MULT_REG = 1'b0;
	defparam i_sbmac16.TOP_8x8_MULT_REG = 1'b0;
	defparam i_sbmac16.D_REG = 1'b0;
	defparam i_sbmac16.B_REG = 1'b0;
	defparam i_sbmac16.A_REG = 1'b0;
	defparam i_sbmac16.C_REG = 1'b0;
endmodule
