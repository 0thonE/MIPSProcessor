module HazardDetection_Unit
(
	input clk,
	
	input in_IdEx_MemRead,
	
	input [4:0]in_IdEx_RegisterRt,

	
	input [4:0]in_IfId_RegisterRs,
	input [4:0]in_IfId_RegisterRt,
	
	
	output EnablePC_Counter,
	output EnableIFtoID,
	output EnableControSig

);

reg [2:0] Enable_values;

always@(clk)begin
	
		if(in_IdEx_MemRead & ((in_IdEx_RegisterRt == in_IfId_RegisterRs) | (in_IdEx_RegisterRt == in_IfId_RegisterRt)))
			begin
				Enable_values = 3'b0;
			end
		else
			begin
				Enable_values = 3'b111;
			end
			
		
end
assign EnablePC_Counter	= Enable_values[2];
assign EnableIFtoID 		= Enable_values[1];
assign EnableControlSig	= Enable_values[0];
endmodule
