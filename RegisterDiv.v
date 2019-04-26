/******************************************************************
* Description
*	This the basic register that is used in the register file
*	1.0
* Author:
*	Othon Alejandro Escandon Azpeitia
* Date:
*	20/04/2019
******************************************************************/
module RegisterDiv
#(
	parameter N=32
)
(
	input clk,
	input reset,
	input enable,
	input  [N-1:0] DataInput,
	
	output reg [N-1:0] DataOutput
);

always@(negedge reset or posedge clk) begin
	if(reset==0)
		DataOutput <= 0;
	else	
		if(enable==1)
			DataOutput<=DataInput;
end

endmodule
//register