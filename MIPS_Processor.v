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
	parameter MEMORY_DEPTH = 32
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
wire [4:0] ALUOp_wire;
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
//wire [31:0] InmmediateExtendAnded_wire;
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

wire Jump_wire;
wire JumpSrc_wire;
wire JumpR_wire;
wire JumpRSrc_wire;
wire JRegW_wire;

wire [31:0] JumpAddress_wire;

wire [31:0] NEW_PC_ADDRESS_wire;
wire [31:0] ALURAMOrPC_4_wire;

wire [4:0] WriteRType_IType_wire;


wire [63:0] fromIF_wire;
wire [63:0] IFtoID_wire;
wire [121:0] fromID_wire;
wire [121:0] IDtoEX_wire;
wire [72:0] fromEX_wire;
wire [72:0] EXtoM_wire;
wire [70:0] fromM_wire;
wire [70:0] MtoWB_wire;

wire [1:0] ForwardA_wire;
wire [1:0] ForwardB_wire;

wire [31:0] ALUA_wire;
wire [31:0] ALUB_wire;

wire EnablePC_Counter_wire;
wire EnableIFtoID_wire;
wire EnableControlSig_wire;

wire [10:0] ControlSignal_wire;


integer ALUStatus;


//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
//******************************************************************/
Control
ControlUnit
(
	.OP(IFtoID_wire[31:26]),
	
	.RegDst(RegDst_wire),//EX box
	.BranchNE(BranchNE_wire),
	.BranchEQ(BranchEQ_wire),
//	.Jump(Jump_wire),
//	.JumpSrc(JumpSrc_wire),
	.MemRead(MemRead_wire),// MEM box
	.MemtoReg(MemtoReg_wire),// WB box
	.MemWrite(MemWrite_wire),//MEM box
	.ALUOp(ALUOp_wire),// EX box
	.ALUSrc(ALUSrc_wire),// EX box
	.RegWrite(RegWrite_wire)//WB box
);


PC_Register
#(
	.N(32)
)
ProgramCounter
(
	.clk(clk),
	.reset(reset),
	.enable(EnablePC_Counter_wire),
//	.NewPC(NEW_PC_ADDRESS_wire),
//	.NewPC(PC4OrBranchAddress_wire),
	.NewPC(PC_4_wire),
	
	.PCValue(PC_wire)
);


ProgramMemory
#(
	//.MEMORY_DEPTH(MEMORY_DEPTH)
	.MEMORY_DEPTH(1024)
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

//
//Adder32bits
//PC_Plus_4_Plus_BranchAddress
//(
//	.Data0(IDtoEX_wire[137:106]),
//	.Data1(BranchAddress_wire),
//	
//	.Result(BranchAddress_PC_4_wire)
//);
//
//Multiplexer2to1
//#(
//	.NBits(32)
//)
//MUX_ForPC4orBranchAddress
//(
//	.Selector(Branch_wire),
//	.MUX_Data0(PC_4_wire),
//	.MUX_Data1(EXtoM_wire[101:70]),
//	
//	.MUX_Output(PC4OrBranchAddress_wire)
//
//);


		// Is used for selecting the source for the Jump address
		//	Could be a register or form the instrucction wire from the bit 25:0
//Multiplexer2to1
//#(
//	.NBits(32)
//)
//MUX_ForJumpAddresOrRegister
//(
//	.Selector(JumpSrc_wire|JumpRSrc_wire),
//	.MUX_Data0({PC_4_wire[31:28],Instruction_wire[25:0],2'b0}-32'h0040_0000), //Jump Address
//	.MUX_Data1(ReadData1_wire), //R[rs]
//	
//	.MUX_Output(JumpAddress_wire)
//
//);

		// We select either the mux for the jump address or the mux for the pc+4/branch adrress
//Multiplexer2to1
//#(
//	.NBits(32)
//)
//MUX_ForPC4BranchOrJump
//(
//	.Selector(Jump_wire|JumpR_wire),
//	.MUX_Data0(PC4OrBranchAddress_wire), //Mux for PC+4/Branch address
//	.MUX_Data1(JumpAddress_wire), //Mux for Jump Address from instruction R_TYPE/ R[rs]
//	
//	.MUX_Output(NEW_PC_ADDRESS_wire)
//
//);


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
	.Selector(IDtoEX_wire[117]),
	.MUX_Data0(IDtoEX_wire[9:5]),
	.MUX_Data1(IDtoEX_wire[4:0]),
	
	.MUX_Output(WriteRType_IType_wire)

);



RegisterFile
Register_File
(
	.clk(clk),
	.reset(reset),
//	.RegWrite(RegWrite_wire & JRegW_wire),
	.RegWrite(MtoWB_wire[70]),
	.WriteRegister(MtoWB_wire[4:0]),
	.ReadRegister1(IFtoID_wire[25:21]),
	.ReadRegister2(IFtoID_wire[20:16]),
	.WriteData(ALUResOrRAMReadData_wire),
	
	.ReadData1(ReadData1_wire),
	.ReadData2(ReadData2_wire)

);

SignExtend
SignExtendForConstants
(   
	.DataInput(IFtoID_wire[15:0]),
	
   .SignExtendOutput(InmmediateExtend_wire)
);



Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForReadDataAndInmediate
(
	.Selector(IDtoEX_wire[116]),		// AluSrc
	.MUX_Data0(IDtoEX_wire[78:47]),  // ReadData2
	.MUX_Data1(IDtoEX_wire[46:15]),  // Immidiate extended
	
	.MUX_Output(ReadData2OrInmmediate_wire)

);


ALUControl
ArithmeticLogicUnitControl
(
	.ALUOp(IDtoEX_wire[115:111]),
	.ALUFunction(IDtoEX_wire[20:15]),
	
//	.RegWOut(JRegW_wire),
//	.Jump(JumpR_wire),
//	.JumpSrc(JumpRSrc_wire),
	.ALUOperation(ALUOperation_wire)
);



ALU
ArithmeticLogicUnit 
(
	.ALUOperation(ALUOperation_wire),	//
	.A(ALUA_wire),								//ReadData1
	.B(ReadData2OrInmmediate_wire),		//ReadData2 or Immidiate extended
	.Shamt(IDtoEX_wire[25:21]),			//Shamt 
	
	.Zero(Zero_wire),
	.ALUResult(ALUResult_wire)
);

assign ALUResultOut = ALUResult_wire;


////////////////////////


DataMemory 
#(	
	.DATA_WIDTH(32)
)
RAMMememory
(
	.WriteData(EXtoM_wire[36:5]), //MemtoReg_wire
	.Address(EXtoM_wire[68:37] - 32'h1001_0000), // ALUResult
	.MemWrite(EXtoM_wire[70]),
	.MemRead(EXtoM_wire[69]),
	.clk(clk),
	
	.ReadData(RAMReadData_wire)
);




Multiplexer2to1
#(
	.NBits(32)
)
MUX_ForALUResultAndRAMReadData
(
	.Selector(MtoWB_wire[69]),
	.MUX_Data0(MtoWB_wire[36:5]),
	.MUX_Data1(MtoWB_wire[68:37]),
	
	.MUX_Output(ALUResOrRAMReadData_wire)

);


//////////////////////////
//
//
//ANDGate
//BranchEQAndZero
//(
//	.A(EXtoM_wire[106]),
//	.B(EXtoM_wire[69]),
//	.C(BranchEQNZero_wire)
//);
//
//ANDGate
//BranchNEAndZero
//(
//	.A(EXtoM_wire[107]),
//	.B(~EXtoM_wire[69]),
//	.C(BranchNENZero_wire)
//);

	//Get the mux for PC4/Branch address selector
//Multiplexer2to1
//#(
//	.NBits(1)
//)
//MUX_ForBranch
//(
//	.Selector(EXtoM_wire[107]),
//	.MUX_Data0(BranchEQNZero_wire),
//	.MUX_Data1(BranchNENZero_wire),
//	
//	.MUX_Output(Branch_wire)
//
//);

	//We shift the inmmediate <<2 to be sure that the memomry address is valid
ShiftLeft2 
BranchShift2
(   
	.DataInput(IDtoEX_wire[41:10]),
   
	.DataOutput(BranchAddress_wire)

);


///////////////////////////


	//We use this so we get pc4 and we can send it to R[31] or $ra
	//Select what is going to be written in the Register file
//Multiplexer2to1
//#(
//	.NBits(32)
//)
//MUX_ForALURAMAndPC4
//(
//	.Selector(Jump_wire),
//	.MUX_Data0(ALUResOrRAMReadData_wire),
//	.MUX_Data1(PC_4_wire),
//	
//	.MUX_Output(ALURAMOrPC_4_wire)
//
//);

	//Select what is going to be the write addres on the Register file
//Multiplexer2to1
//#(
//	.NBits(5)
//)
//MUX_ForRt_RsOrR31
//(
//	.Selector(Jump_wire),
//	.MUX_Data0(WriteRType_IType_wire),
//	.MUX_Data1(31),
//	
//	.MUX_Output(WriteRegister_wire)
//
//);


//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

							// 63:32			31:0
assign fromIF_wire = {PC_4_wire, Instruction_wire};

RegisterDiv
#(
	.N(64)
)
IFtoID_Register
(
	.clk(clk),
	.reset(reset),
	.enable(EnableIFtoID_wire),
	.DataInput(fromIF_wire),
	
	.DataOutput(IFtoID_wire)
);



							//	 		121								120
assign fromID_wire = {	 ControlSignal_wire[10], ControlSignal_wire[9],
							//  RegWrite_wire               MemtoReg_wire //WB control portion
							//			119		              	   118
								 ControlSignal_wire[8], ControlSignal_wire[7],
							//	 MemWrite_wire					 MemRead_wire  //MEM control portion
							//			117								116					115:111
								 ControlSignal_wire[6], ControlSignal_wire[5], ControlSignal_wire[4:0],
							//	 RegDst_wire   					ALUSrc_wire 		   ALUOp_wire, 		//EX control portion
							//		110:79			78:47					46:15							14:0
                         ReadData1_wire, ReadData2_wire, InmmediateExtend_wire, IFtoID_wire [25:11] };
                     //   																			==Instruction Wire
							
							
							 
RegisterDiv
#(
	.N(122)
)
IDtoEX_Register
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.DataInput(fromID_wire),
	
	.DataOutput(IDtoEX_wire)
);


							// 		72					71	
assign fromEX_wire = {	IDtoEX_wire[121], IDtoEX_wire[120],
							//	  RegWrite_wire    MemtoReg_wire
                     //   		70					69
								IDtoEX_wire[119], IDtoEX_wire[118],
                     //   MemWrite_wire    MemRead_wire
							//			68:37			 36:5						4:0
								 ALUResult_wire, ALUB_wire, WriteRType_IType_wire };
							//						  ReadData2
							 
							 

RegisterDiv
#(			
	.N(73)
)
EXtoMEM_Register
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.DataInput(fromEX_wire),
	
	.DataOutput(EXtoM_wire)
);


									
						  //		70					  69	
assign fromM_wire = {  EXtoM_wire[72], EXtoM_wire[71],
						  //  RegWrite_wire   MemtoReg_wire
						  //		68:37					36:5						4:0
							  RAMReadData_wire, EXtoM_wire[68:37], EXtoM_wire[4:0] };
						  //								ALUResult			R/I Type


RegisterDiv
#(
	.N(71)
)
MEMtoWB_Register
(
	.clk(clk),
	.reset(reset),
	.enable(1),
	.DataInput(fromM_wire),
	
	.DataOutput(MtoWB_wire)
);


//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////


Forwarding_Unit
ForwardingUnit
(
	.clk(clk),
	
	.in_ExM_RegWrite(EXtoM_wire[72]),
	.in_MW_RegWrite(MtoWB_wire[70]),
	
	.in_ExM_RegisterRd(EXtoM_wire[4:0]),
	.in_MW_RegisterRd(MtoWB_wire[4:0]),
	
	.in_IdEx_RegisterRs(IDtoEX_wire[14:10]),
	.in_IdEx_RegisterRt(IDtoEX_wire[9:5]),
	
	
	.ForwardA(ForwardA_wire),
	.ForwardB(ForwardB_wire)
);

Multiplexer4to1
Mux_FU_ALU_DataA
(
	.Selector(ForwardA_wire),
	.MUX_Data0(IDtoEX_wire[110:79]),
	.MUX_Data1(ALUResOrRAMReadData_wire),
	.MUX_Data2(EXtoM_wire[68:37]),
//	.MUX_Data3(), //No se usa
	
	.MUX_Output(ALUA_wire)

);

Multiplexer4to1
Mux_FU_ALU_DataB
(
	.Selector(ForwardB_wire),
	.MUX_Data0(IDtoEX_wire[78:47]),
	.MUX_Data1(ALUResOrRAMReadData_wire),
	.MUX_Data2(EXtoM_wire[68:37]),
//	.MUX_Data3(), //No se usa
	
	.MUX_Output(ALUB_wire)

);


//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

HazardDetection_Unit
HazarDetection
(
	.clk(clk),
	
	.in_IdEx_MemRead(IDtoEX_wire[118]),
	
	.in_IdEx_RegisterRt(IDtoEX_wire[9:5]),
	
	.in_IfId_RegisterRs(IFtoID_wire[14:10]),
	.in_IfId_RegisterRt(IFtoID_wire[9:5]),
	
	
	.EnablePC_Counter(EnablePC_Counter_wire),
	.EnableIFtoID(EnableIFtoID_wire),
	.EnableControSig(EnableControlSig_wire)

);

Multiplexer2to1
#(
	.NBits(11)
)
MUX_ControlSignal
(
	.Selector(EnableControlSig_wire),
	.MUX_Data0(0),
	.MUX_Data1({RegWrite_wire, MemtoReg_wire, MemWrite_wire, MemRead_wire,	RegDst_wire, ALUSrc_wire, ALUOp_wire }),
	
	.MUX_Output(ControlSignal_wire)

);


//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////


endmodule
