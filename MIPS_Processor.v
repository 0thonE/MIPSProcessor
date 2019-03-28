/******************************************************************
* Description
*	This is the top-level of a MIPS processor
* This processor is written Verilog-HDL. Also, it is synthesizable into hardware.
* Parameter MEMORY_DEPTH configures the program memory to allocate the program to
* be execute. If the size of the program changes, thus, MEMORY_DEPTH must change.
* This processor was made for computer organization class at ITESO.
******************************************************************/


module MIPS_Processor
#(
	parameter MEMORY_DEPTH = 32,
	parameter N = 32
)

(
	// Inputs
	input clk,
	input reset,
	input [7:0] PortIn,
	// Output
	output [31:0] ALUResultOut,
	output [31:0] PortOut
);
//******************************************************************/
//******************************************************************/
assign  PortOut = 0;

//******************************************************************/
//******************************************************************/
// Data types to connect modules
wire BranchNE_wire;
wire BranchEQ_wire;
wire RegDst_wire;
wire NotZeroANDBrachNE;
wire ZeroANDBrachEQ;
wire ORForBranch;
wire ALUSrc_wire;
wire RegWrite_wire;
wire Zero_wire;
wire [2:0] ALUOp_wire;
wire [3:0] ALUOperation_wire;
wire [4:0] WriteRegister_wire;
wire [31:0] MUX_PC_wire;
wire [31:0] PC_wire;
wire [31:0] Instruction_wire;
wire [31:0] ReadData1_wire;
wire [31:0] ReadData2_wire;
wire [31:0] InmmediateExtend_wire;
wire [31:0] ReadData2OrInmmediate_wire;
wire [31:0] ALUResult_wire;
wire [31:0] PC_4_wire;
wire [31:0] InmmediateExtendAnded_wire;
wire [31:0] PCtoBranch_wire;

wire MemRead_wire;
wire MemWrite_wire;
wire MemtoReg_wire;

wire [31:0] RAMReadData_wire;
wire [31:0] ALUResOrRAMReadData_wire;


wire BranchNENZero_wire;
wire BranchEQNZero_wire;
wire Branch_wire;

wire [31:0] BranchAddress_wire;
wire [31:0] BranchAddress_PC_4_wire;
wire [31:0] PC4OrBranchAddress_wire;

integer ALUStatus;


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
ControlUnit
(
	.OP(Instruction_wire[31:26]),
	
	.RegDst(RegDst_wire),
	.BranchNE(BranchNE_wire),
	.BranchEQ(BranchEQ_wire),
	.MemRead(MemRead_wire),
	.MemtoReg(MemtoReg_wire),
	.MemWrite(MemWrite_wire),
	.ALUOp(ALUOp_wire),
	.ALUSrc(ALUSrc_wire),
	.RegWrite(RegWrite_wire)
);


PC_Register
#(
	.N(N)
)
ProgramCOunter
(
	.clk(clk),
	.reset(reset),
	.NewPC(PC4OrBranchAddress_wire),
	
	.PCValue(PC_wire)
);


ProgramMemory
#(
	//.MEMORY_DEPTH(MEMORY_DEPTH)
	.MEMORY_DEPTH(64)
)
ROMProgramMemory
(
	.Address(PC_wire),
	
	.Instruction(Instruction_wire)
);

Adder32bits
PC_Plus_4
(
	.Data0(PC_wire),
	.Data1(4),
	
	.Result(PC_4_wire)
);

Adder32bits
PC_Plus_4_Plus_BranchAddress
(
	.Data0(PC_4_wire),
	.Data1(BranchAddress_wire),
	
	.Result(BranchAddress_PC_4_wire)
);

Multiplexer2to1
#(
	.NBits(N)
)
MUX_ForPC4AndBranchAddress
(
	.Selector(Branch_wire),
	.MUX_Data0(PC_4_wire),
	.MUX_Data1(BranchAddress_PC_4_wire),
	
	.MUX_Output(PC4OrBranchAddress_wire)

);
//Terminar modulo para shift y addres


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Multiplexer2to1
#(
	.NBits(5)
)
MUX_ForRTypeAndIType
(
	.Selector(RegDst_wire),
	.MUX_Data0(Instruction_wire[20:16]),
	.MUX_Data1(Instruction_wire[15:11]),
	
	.MUX_Output(WriteRegister_wire)

);



RegisterFile
Register_File
(
	.clk(clk),
	.reset(reset),
	.RegWrite(RegWrite_wire),
	.WriteRegister(WriteRegister_wire),
	.ReadRegister1(Instruction_wire[25:21]),
	.ReadRegister2(Instruction_wire[20:16]),
	.WriteData(ALUResOrRAMReadData_wire),
	
	.ReadData1(ReadData1_wire),
	.ReadData2(ReadData2_wire)

);

SignExtend
SignExtendForConstants
(   
	.DataInput(Instruction_wire[15:0]),
	
   .SignExtendOutput(InmmediateExtend_wire)
);



Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForReadDataAndInmediate
(
	.Selector(ALUSrc_wire),
	.MUX_Data0(ReadData2_wire),
	.MUX_Data1(InmmediateExtend_wire),
	
	.MUX_Output(ReadData2OrInmmediate_wire)

);


ALUControl
ArithmeticLogicUnitControl
(
	.ALUOp(ALUOp_wire),
	.ALUFunction(Instruction_wire[5:0]),
	
	.ALUOperation(ALUOperation_wire)
);



ALU
ArithmeticLogicUnit 
(
	.ALUOperation(ALUOperation_wire),
	.A(ReadData1_wire),
	.B(ReadData2OrInmmediate_wire),
	.Shamt(Instruction_wire[10:6]),
	
	.Zero(Zero_wire),
	.ALUResult(ALUResult_wire)
);

assign ALUResultOut = ALUResult_wire;


////////////////////////


DataMemory 
#(	
	.DATA_WIDTH(N)
)
RAMMememory
(
	.WriteData(ReadData2_wire),
	.Address(ALUResult_wire),
	.MemWrite(MemWrite_wire),
	.MemRead(MemRead_wire),
	.clk(clk),
	
	.ReadData(RAMReadData_wire)
);




Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForALUResultAndRAMReadData
(
	.Selector(MemtoReg_wire),
	.MUX_Data0(ALUResult_wire),
	.MUX_Data1(RAMReadData_wire),
	
	.MUX_Output(ALUResOrRAMReadData_wire)

);


//////////////////////////


ANDGate
BranchEQAndZero
(
	.A(BranchEQ_wire),
	.B(Zero_wire),
	.C(BranchEQNZero_wire)
);

ANDGate
BranchNEAndZero
(
	.A(BranchNE_wire),
	.B(~Zero_wire),
	.C(BranchNENZero_wire)
);


Multiplexer2to1
#(
	.NBits(1)
)
MUX_ForBranch
(
	.Selector(BranchNE_wire),
	.MUX_Data0(BranchEQNZero_wire),
	.MUX_Data1(BranchNENZero_wire),
	
	.MUX_Output(Branch_wire)

);


ShiftLeft2 
BranchShift2
(   
	.DataInput(InmmediateExtend_wire),
   
	.DataOutput(BranchAddress_wire)

);


endmodule

