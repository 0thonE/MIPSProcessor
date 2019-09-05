/******************************************************************
* Description
*	This is a 4to1 multiplexer that can be parameterized in its bit-width.
*	1.0
* Author:
*	Othón Escandón
* email:
*	is708135@iteso.mx
* Date:
*	13/05/2019
******************************************************************/

module Multiplexer4to1
#(
	parameter NBits=32
)
(
	input [1:0] Selector,
	input [NBits-1:0] MUX_Data0,
	input [NBits-1:0] MUX_Data1,
	input [NBits-1:0] MUX_Data2,
	input [NBits-1:0] MUX_Data3,
	
	output reg [NBits-1:0] MUX_Output

);


localparam Data0 = 2'b00;
localparam Data1 = 2'b01;
localparam Data2 = 2'b10;
localparam Data3 = 2'b11;


always@( Selector, MUX_Data3, MUX_Data2, MUX_Data1, MUX_Data0 ) begin
	
	case(Selector)
		Data0: 	MUX_Output = MUX_Data0;
		Data1: 	MUX_Output = MUX_Data1;
		Data2: 	MUX_Output = MUX_Data2;
		Data3: 	MUX_Output = MUX_Data3;
	
	default:
		MUX_Output= 32'h0;
	endcase
	
end

endmodule
