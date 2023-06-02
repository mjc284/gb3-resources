/*
module dsp (
		input [31:0] input1, 
		input [31:0] input2, 
		input addorsub,
		output [31:0] out
		);	
	wire co;
	SB_MAC16 #(
			// Parameters
			.TOPOUTPUT_SELECT(2'b00), // Adder, unregistered
			.TOPADDSUB_LOWERINPUT(2'b00), // Input A
			.TOPADDSUB_UPPERINPUT(1'b1), // Input C	
			.TOPADDSUB_CARRYSELECT(2'b10), // Cascade ACCUMOUT from lower Adder
			.BOTOUTPUT_SELECT(2'b00), // Adder, unregistered
			.BOTADDSUB_LOWERINPUT(2'b00), // Input B
			.BOTADDSUB_UPPERINPUT(1'b1), // Input D
			.BOTADDSUB_CARRYSELECT(2'b00), // Constant 0
			.NEG_TRIGGER(1'b0), // Rising edge
			.A_REG(1'b0), // Not registered
			.B_REG(1'b0), // Not registered
			.C_REG(1'b0), // Not registered
			.D_REG(1'b0), // Not registered
			.A_SIGNED(1'b0), // Input A is unsigned
			.B_SIGNED(1'b0), // Input B is unsigned
			.MODE_8x8(1'b1)
		) SB_MAC16_inst0(
		// port interfaces
			.A(input1[31:16]),
			.B(input1[15:0]),
			.C(input2[31:16]),
			.D(input2[15:0]),
			.O(out[31:0]),
			.ADDSUBTOP(addorsub),
			.ADDSUBBOT(addorsub),
			.AHOLD(1'b0),
			.BHOLD(1'b0),
			.CHOLD(1'b0),
			.DHOLD(1'b0),
			.IRSTTOP(1'b0),
			.ORSTTOP(1'b0),
			.OLOADTOP(1'b0),
			.OHOLDTOP(1'b0),
			.IRSTBOT(1'b0),
			.ORSTBOT(1'b0),
			.OLOADBOT(1'b0),
			.OHOLDBOT(1'b0),
			.CI(1'b0),
			.CO(co),
			.ACCUMCI(),
			.ACCUMCO(),
			.SIGNEXTIN(),
			.SIGNEXTOUT()
			);
	
endmodule
*/


module dsp (
		input [31:0] input1, 
		input [31:0] input2, 
		input addorsub,
		output [31:0] out
		);	

	SB_MAC16 #(
			// Parameters
			.TOPOUTPUT_SELECT(2'b00), // Adder, unregistered
			.TOPADDSUB_LOWERINPUT(2'b00), // Input A
			.TOPADDSUB_UPPERINPUT(1'b1), // Input C	
			.TOPADDSUB_CARRYSELECT(2'b10), // Cascade ACCUMOUT from lower Adder
			.BOTOUTPUT_SELECT(2'b00), // Adder, unregistered
			.BOTADDSUB_LOWERINPUT(2'b00), // Input B
			.BOTADDSUB_UPPERINPUT(1'b1), // Input D
			.BOTADDSUB_CARRYSELECT(2'b00), // Constant 0
			.NEG_TRIGGER(1'b0), // Rising edge
			.A_REG(1'b0), // Not registered
			.B_REG(1'b0), // Not registered
			.C_REG(1'b0), // Not registered
			.D_REG(1'b0), // Not registered
			.A_SIGNED(1'b0), // Input A is unsigned
			.B_SIGNED(1'b0) // Input B is unsigned
		) SB_MAC16_inst0(
		// port interfaces
			.A(input1[31:16]),
			.B(input1[15:0]),
			.C(input2[31:16]),
			.D(input2[15:0]),
			.O(out[31:0]),
			.ADDSUBTOP(addorsub),
			.ADDSUBBOT(addorsub),
			.AHOLD(1'b0),
			.BHOLD(1'b0),
			.CHOLD(1'b0),
			.DHOLD(1'b0),
			.IRSTTOP(1'b0),
			.ORSTTOP(1'b0),
			.OLOADTOP(1'b0),
			.OHOLDTOP(1'b0),
			.IRSTBOT(1'b0),
			.ORSTBOT(1'b0),
			.OLOADBOT(1'b0),
			.OHOLDBOT(1'b0),
			.CI(1'b0),
			.CO(),
			.ACCUMCI(1'b0),
			.ACCUMCO(),
			.SIGNEXTIN(1'b0),
			.SIGNEXTOUT()
			);
	
endmodule
