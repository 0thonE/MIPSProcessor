module Forwarding_Unit
(
	input clk,
	
	input in_ExM_RegWrite,
	input in_MW_RegWrite,
	
	input [4:0]in_ExM_RegisterRd,
	input [4:0]in_MW_RegisterRd,
	
	input [4:0]in_IdEx_RegisterRs,
	input [4:0]in_IdEx_RegisterRt,
	
	
	output [1:0]ForwardA,
	output [1:0]ForwardB

);



reg [1:0] ForwardA_values;
reg [1:0] ForwardB_values;


always@(clk)begin
	begin
	
//		EX ForwardingUnit	
		if(in_ExM_RegWrite & (in_ExM_RegisterRd != 5'b0) & (in_ExM_RegisterRd == in_IdEx_RegisterRs))
			begin
				ForwardA_values = 2'b10;
			end			
//		MEM ForwardingUnit	
		else if(in_MW_RegWrite & (in_MW_RegisterRd != 5'b0) & (in_MW_RegisterRd == in_IdEx_RegisterRs))// && (in_ExM_RegisterRd != in_IdEx_RegisterRs) && (in_MW_RegisterRd == in_IdEx_RegisterRs))
			begin
				ForwardA_values = 2'b01;
			end
		else
			begin
				ForwardA_values = 2'b00;
			end
			
			
//		EX ForwardingUnit	
		if(in_ExM_RegWrite & (in_ExM_RegisterRd != 5'b0) & (in_ExM_RegisterRd == in_IdEx_RegisterRt))
			begin
				ForwardB_values = 2'b10;
			end
//		MEM ForwardingUnit	
		else if(in_MW_RegWrite & (in_MW_RegisterRd != 5'b0) & (in_MW_RegisterRd == in_IdEx_RegisterRt)) //&& (in_ExM_RegisterRd != in_IdEx_RegisterRt) && (in_MW_RegisterRd == in_IdEx_RegisterRt))
			begin
				ForwardB_values = 2'b01;
			end
		else
			begin
				ForwardB_values = 2'b00;
			end
	
		
	end
end


assign ForwardA = ForwardA_values;
assign ForwardB = ForwardB_values;


endmodule
