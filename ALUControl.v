/******************************************************************
* Description
*	This is the control unit for the ALU. It receves an signal called 
*	ALUOp from the control unit and a signal called ALUFunction from
*	the intrctuion field named function.
* Version:
*	1.0
* Author:
*	Dr. José Luis Pizano Escalante
* email:
*	luispizano@iteso.mx
* Date:
*	01/03/2014
******************************************************************/
module ALUControl
(
	input [4:0] ALUOp,
	input [5:0] ALUFunction,
	
	output RegWOut, Jump, JumpSrc,	
	output [3:0] ALUOperation

);

localparam R_Type_ADD    = 11'b00000_100000;
localparam R_Type_AND    = 11'b00000_100100;
localparam R_Type_NOR    = 11'b00000_100111;
localparam R_Type_OR     = 11'b00000_100101;
localparam R_Type_SLL    = 11'b00000_000000;
localparam R_Type_SRL    = 11'b00000_000010;
localparam R_Type_SUB    = 11'b00000_100010;

localparam R_Type_JR	    = 11'b00000_001000; 

localparam I_Type_ADDI   = 11'b00001_xxxxxx;
localparam I_Type_ANDI	 = 11'b00010_xxxxxx;
localparam I_Type_ORI    = 11'b00011_xxxxxx;
localparam I_Type_LUI    = 11'b00100_xxxxxx;


localparam I_Type_LW	    = 11'b00101_xxxxxx;
localparam I_Type_SW	    = 11'b00110_xxxxxx;

localparam I_Type_BEQ    = 11'b00111_xxxxxx;
localparam I_Type_BNE    = 11'b01001_xxxxxx;






reg [3:0] ALUControlValues;
reg [1:0] JumpValues;
reg RegWValue;

wire [10:0] Selector;
wire [4:0] SelectorJ;

assign Selector = {ALUOp, ALUFunction};

always@(Selector)begin
	casex(Selector)

		R_Type_ADD:    ALUControlValues = 4'b0011;
		R_Type_AND: 	ALUControlValues = 4'b0101;
		R_Type_NOR:    ALUControlValues = 4'b0111;
		R_Type_OR: 		ALUControlValues = 4'b1000;
		R_Type_SLL:    ALUControlValues = 4'b0000;
		R_Type_SRL: 	ALUControlValues = 4'b0001;
		R_Type_SUB: 	ALUControlValues = 4'b0100;
		

		I_Type_ADDI:	ALUControlValues = 4'b0011;
		I_Type_ANDI:	ALUControlValues = 4'b0101;
		I_Type_ORI:		ALUControlValues = 4'b1000;
		I_Type_LUI:		ALUControlValues = 4'b0010;
		
		
		I_Type_LW:		ALUControlValues = 4'b0011;
		I_Type_SW:		ALUControlValues = 4'b0011;
		
		I_Type_BEQ:		ALUControlValues = 4'b0100;
		I_Type_BNE:		ALUControlValues = 4'b0100;
		
			
				
		default: ALUControlValues = 4'b1111;
		
	endcase
end

always@(Selector)begin
	casex(Selector)
	
		R_Type_JR: begin
//							if(ALUFunction==6'b001000)
//								begin
									JumpValues = 2'b11;
									RegWValue  = 1'b0;
//								end
//							else
//								begin
//									JumpValues = 2'b00;
//									RegWValue  = 1'b1;
//								end
						end
		
		default: begin
						JumpValues	= 2'b0;
						RegWValue	= 1'b1;
					end
		
	endcase
end



assign ALUOperation	= ALUControlValues;
assign Jump		 		= JumpValues[1];
assign JumpSrc 		= JumpValues[0];
assign RegWOut 		= RegWValue;

endmodule
//alucontrol