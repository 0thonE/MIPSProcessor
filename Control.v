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
	output Jump,
	output JumpSrc,
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

localparam J_Type_J	  = 6'h_2;
localparam J_Type_JAL  = 6'h_3;


reg [14:0] ControlValues;

always@(OP) begin
	casex(OP)
		R_Type:       	ControlValues= 15'b1_001_00_00_00_00000;
		
		I_Type_ADDI:	ControlValues= 15'b0_101_00_00_00_00001;
		I_Type_ANDI:	ControlValues= 15'b0_101_00_00_00_00010;
		I_Type_ORI:		ControlValues= 15'b0_101_00_00_00_00011;
		I_Type_LUI:		ControlValues= 15'b0_101_00_00_00_00100;
			
	
		I_Type_LW:		ControlValues= 15'b0_111_10_00_00_00101;
		I_Type_SW:		ControlValues= 15'b0_110_01_00_00_00110;
		
		I_Type_BEQ:		ControlValues= 15'b0_000_00_01_00_00111;
		I_Type_BNE:		ControlValues= 15'b0_000_00_10_00_01001;
		
		//														    	 xxxxx
		J_Type_J:		ControlValues= 15'b0_000_00_00_10_11111;
		J_Type_JAL:		ControlValues= 15'b0_001_00_00_10_11111;

		
		default:
			ControlValues= 13'h0;
		endcase
end	
	
assign RegDst	 = ControlValues[14];
assign ALUSrc	 = ControlValues[13];
assign MemtoReg = ControlValues[12];
assign RegWrite = ControlValues[11];
assign MemRead	 = ControlValues[10];
assign MemWrite = ControlValues[9];
assign BranchNE = ControlValues[8];
assign BranchEQ = ControlValues[7];
assign Jump 	 = ControlValues[6];
assign JumpSrc  = ControlValues[5];
assign ALUOp 	 = ControlValues[4:0];	

endmodule
//control

