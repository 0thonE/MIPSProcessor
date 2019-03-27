/******************************************************************
* Description
*	This is control unit for the MIPS processor. The control unit is 
*	in charge of generation of the control signals. Its only input 
*	corresponds to opcode from the instruction.
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/
module Control
(
	input [5:0]OP,
	
	output RegDst,
	output BranchEQ,
	output BranchNE,
	output MemRead,
	output MemtoReg,
	output MemWrite,
	output ALUSrc,
	output RegWrite,
	output [4:0]ALUOp
);
localparam R_Type = 0;

localparam I_Type_ADDI = 6'h_8;
localparam I_Type_ANDI = 6'h_c;
localparam I_Type_ORI  = 6'h_d;
localparam I_Type_LUI  = 6'h_f;

localparam I_Type_LW	  = 6'h_23;
localparam I_Type_SW	  = 6'h_2b;


localparam I_Type_BEQ  = 6'h_4;
localparam I_Type_BNE  = 6'h_5;


reg [12:0] ControlValues;

always@(OP) begin
	casex(OP)
		R_Type:       	ControlValues= 13'b1_001_00_00_00111;
		
		I_Type_ADDI:	ControlValues= 13'b0_101_00_00_00001;
		I_Type_ANDI:	ControlValues= 13'b0_101_00_00_00010;
		I_Type_ORI:		ControlValues= 13'b0_101_00_00_00011;
		I_Type_LUI:		ControlValues= 13'b0_101_00_00_00100;
		
		
		I_Type_LW:		ControlValues= 13'b0_111_10_00_00101;
		I_Type_SW:		ControlValues= 13'b0_110_01_00_00110;
		
		I_Type_BEQ:		ControlValues= 13'b0_000_00_01_00111;
		I_Type_BNE:		ControlValues= 13'b0_000_00_10_01000;

		
		default:
			ControlValues= 10'b0000000000;
		endcase
end	
	
assign RegDst = ControlValues[12];
assign ALUSrc = ControlValues[11];
assign MemtoReg = ControlValues[10];
assign RegWrite = ControlValues[9];
assign MemRead = ControlValues[8];
assign MemWrite = ControlValues[7];
assign BranchNE = ControlValues[6];
assign BranchEQ = ControlValues[5];
assign ALUOp = ControlValues[4:0];	

endmodule
//control

