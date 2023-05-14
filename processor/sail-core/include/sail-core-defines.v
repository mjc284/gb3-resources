/*
	Authored 2019, Phillip Stanley-Marbell.

	All rights reserved.
	Redistribution and use in source and binary forms, with or without
	modification, are permitted provided that the following conditions
	are met:

	*	Redistributions of source code must retain the above
		copyright notice, this list of conditions and the following
		disclaimer.

	*	Redistributions in binary form must reproduce the above
		copyright notice, this list of conditions and the following
		disclaimer in the documentation and/or other materials
		provided with the distribution.

	*	Neither the name of the author nor the names of its
		contributors may be used to endorse or promote products
		derived from this software without specific prior written
		permission.

	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
	"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
	LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
	FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
	COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
	INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
	BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
	LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
	CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
	LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
	ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
	POSSIBILITY OF SUCH DAMAGE.
*/



/*
 *			The ALUCTL bit patterns: all bits
 */
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_LUI			7'b0000000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_AUIPC		7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_JAL			7'b0001111
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_JALR		7'b0001111
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_BEQ			7'b0010110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_BNE			7'b0100110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_BLT			7'b0110110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_BGE			7'b1000110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_BLTU		7'b1010110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_BGEU		7'b1100110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_LB			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_LH			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_LW			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_LBU			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_LHU			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SB			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SH			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SW			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_ADDI		7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SLTI		7'b0000111
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SLTIU		7'b0000111
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_XORI		7'b0001000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_ORI			7'b0000001
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_ANDI		7'b0000000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SLLI		7'b0000101
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SRLI		7'b0000011
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SRAI		7'b0000100
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_ADD			7'b0000010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SUB			7'b0000110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SLL			7'b0000101
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SLT			7'b0000111
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SLTU		7'b0000111
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_XOR			7'b0001000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SRL			7'b0000011
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_SRA			7'b0000100
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_OR			7'b0000001
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_AND			7'b0000000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_CSRRW		7'b0001001
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_CSRRS		7'b0001010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_CSRRC		7'b0001011
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to0_ILLEGAL		7'b0001111



/*
 *	The ALUCTL bit patterns: used for determining which arithmetic operation to perform in alu.v
 */
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_LUI			4'b0000
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_AUIPC		4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_JAL			4'b1111
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_JALR		4'b1111
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_BEQ			4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_BNE			4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_BLT			4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_BGE			4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_BLTU		4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_BGEU		4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_LB			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_LH			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_LW			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_LBU			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_LHU			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SB			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SH			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SW			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_ADDI		4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SLTI		4'b0111
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SLTIU		4'b0111
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_XORI		4'b1000
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_ORI			4'b0001
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_ANDI		4'b0000
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SLLI		4'b0101
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SRLI		4'b0011
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SRAI		4'b0100
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_ADD			4'b0010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SUB			4'b0110
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SLL			4'b0101
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SLT			4'b0111
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SLTU		4'b0111
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_XOR			4'b1000
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SRL			4'b0011
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_SRA			4'b0100
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_OR			4'b0001
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_AND			4'b0000
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_CSRRW		4'b1001
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_CSRRS		4'b1010
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_CSRRC		4'b1011
`define kSAIL_MICROARCHITECTURE_ALUCTL_3to0_ILLEGAL		4'b1111



/*
 *	The ALUCTL bit patterns: used for determining branch type in alu.v
 */
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_LUI			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_AUIPC		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_JAL			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_JALR		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_BEQ			3'b001
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_BNE			3'b010
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_BLT			3'b011
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_BGE			3'b100
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_BLTU		3'b101
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_BGEU		3'b110
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_LB			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_LH			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_LW			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_LBU			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_LHU			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SB			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SH			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SW			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_ADDI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SLTI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SLTIU		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_XORI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_ORI			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_ANDI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SLLI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SRLI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SRAI		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_ADD			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SUB			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SLL			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SLT			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SLTU		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_XOR			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SRL			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_SRA			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_OR			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_AND			3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_CSRRW		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_CSRRS		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_CSRRC		3'b000
`define kSAIL_MICROARCHITECTURE_ALUCTL_6to4_ILLEGAL		3'b000



/*
 *	Low-order three bits of the FuncCode microarchtectural 4-bit field
 *
 *	Relation to the funct7 and funct3 fields of RISC-V ISA: FuncCode is
 *	funct3 with bit 5 of the funct7 (the only bit that changes in the
 *	RV32I isa) added on as the MSB.
 */
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_BEQ			3'b000
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_BNE			3'b001
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_BLT			3'b100
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_BGE			3'b101
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_BLTU			3'b110
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_BGEU			3'b111
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_LB			3'b000
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_LH			3'b001
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_LW			3'b010
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_LBU			3'b100
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_LHU			3'b101
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SB			3'b000
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SH			3'b001
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SW			3'b010
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_ADDI			3'b000
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SLTI			3'b010
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SLTIU			3'b011
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_XORI			3'b100
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_ORI			3'b110
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_ANDI			3'b111
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SLLI			3'b001
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SLL			3'b001
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SLT			3'b010
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_SLTU			3'b011
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_XOR			3'b100
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_OR			3'b110
`define kRV32I_INSTRUCTION_FUNCCODE_2to0_AND			3'b111



/*
 *	Low-order two bits of the FuncCode microarchtectural 4-bit field
 *
 *	Relation to the funct7 and funct3 fields of RISC-V ISA: FuncCode is
 *	funct3 with bit 5 of the funct7 (the only bit that changes in the
 *	RV32I isa) added on as the MSB.
 */
`define kRV32I_INSTRUCTION_FUNCCODE_1to0_CSRRW			2'b01
`define kRV32I_INSTRUCTION_FUNCCODE_1to0_CSRRS			2'b10
`define kRV32I_INSTRUCTION_FUNCCODE_1to0_CSRRC			2'b11
