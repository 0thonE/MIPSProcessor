# Reading C:/intelFPGA_lite/18.1/modelsim_ase/tcl/vsim/pref.tcl
# reading C:/intelFPGA_lite/18.1/modelsim_ase/win32aloem/../modelsim.ini
# Loading project MIPS_Processor
vsim -gui work.MIPS_Processor_TB
# vsim -gui work.MIPS_Processor_TB 
# Start time: 05:14:09 on May 17,2019
# Loading work.MIPS_Processor_TB
# Loading work.MIPS_Processor
# Loading work.Control
# Loading work.PC_Register
# Loading work.ProgramMemory
# Loading work.Adder32bits
# Loading work.Multiplexer2to1
# Loading work.RegisterFile
# Loading work.DecoderRegisterFile
# Loading work.Register
# Loading work.MUXRegisterFile
# Loading work.SignExtend
# Loading work.ALUControl
# Loading work.ALU
# Loading work.DataMemory
# Loading work.ANDGate
# Loading work.ShiftLeft2
# ** Warning: (vsim-3017) C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v(24): [TFMPC] - Too few port connections. Expected 5, found 4.
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV File: C:/Users/otis_/MIPSProcessor/MIPS_Processor.v
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v(24): [TFMPC] - Missing connection for port 'PortIn'.
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(99): [PCDPC] - Port size (5) does not match connection size (3) for port 'ALUOp'. The port definition is at: C:/Users/otis_/MIPSProcessor/Control.v(28).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ControlUnit File: C:/Users/otis_/MIPSProcessor/Control.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(271): [PCDPC] - Port size (5) does not match connection size (3) for port 'ALUOp'. The port definition is at: C:/Users/otis_/MIPSProcessor/ALUControl.v(17).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ArithmeticLogicUnitControl File: C:/Users/otis_/MIPSProcessor/ALUControl.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(404): [PCDPC] - Port size (5) does not match connection size (32) for port 'MUX_Data1'. The port definition is at: C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v(20).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/MUX_ForRt_RsOrR31 File: C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v
# Compile of SignExtend.v was successful.
# Compile of Adder32bits.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of ANDGate.v was successful.
# Compile of Control.v was successful.
# Compile of DataMemory.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of Definitions.v was successful.
# Compile of MIPS_Processor.v failed with 2 errors.
# Compile of MIPS_Processor_TB.v was successful.
# Compile of Multiplexer2to1.v was successful.
# Compile of MUXRegisterFile.v was successful.
# Compile of PC_Register.v was successful.
# Compile of ProgramMemory.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of ShiftLeft2.v was successful.
# 18 compiles, 1 failed with 2 errors.
# Compile of SignExtend.v was successful.
# Compile of Adder32bits.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of ANDGate.v was successful.
# Compile of Control.v was successful.
# Compile of DataMemory.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of Definitions.v was successful.
# Compile of MIPS_Processor.v was successful.
# Compile of MIPS_Processor_TB.v was successful.
# Compile of Multiplexer2to1.v was successful.
# Compile of MUXRegisterFile.v was successful.
# Compile of PC_Register.v was successful.
# Compile of ProgramMemory.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of ShiftLeft2.v was successful.
# 18 compiles, 0 failed with no errors.

do sim.do
# ** Warning: (vsim-WLF-5000) WLF file currently in use: vsim.wlf
#           File in use by: otis_  Hostname: ESCOTH  ProcessID: 20924
#           Attempting to use alternate WLF file "./wlft2d873q".
# ** Warning: (vsim-WLF-5001) Could not open WLF file: vsim.wlf
#           Using alternate file: ./wlft2d873q
quit -sim
# End time: 05:34:02 on May 17,2019, Elapsed time: 0:19:53
# Errors: 0, Warnings: 7
# reading C:/intelFPGA_lite/18.1/modelsim_ase/win32aloem/../modelsim.ini
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v 
# -- Compiling module Adder32bits
# 
# Top level modules:
# 	Adder32bits
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALU.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALU.v 
# -- Compiling module ALU
# 
# Top level modules:
# 	ALU
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v 
# -- Compiling module ALUControl
# 
# Top level modules:
# 	ALUControl
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v 
# -- Compiling module ANDGate
# 
# Top level modules:
# 	ANDGate
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Control.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Control.v 
# -- Compiling module Control
# 
# Top level modules:
# 	Control
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v 
# -- Compiling module DataMemory
# 
# Top level modules:
# 	DataMemory
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v 
# -- Compiling module DecoderRegisterFile
# 
# Top level modules:
# 	DecoderRegisterFile
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Definitions.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Definitions.v 
# End time: 05:35:43 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:43 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v 
# -- Compiling module Forwarding_Unit
# 
# Top level modules:
# 	Forwarding_Unit
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v 
# -- Compiling module MIPS_Processor
# 
# Top level modules:
# 	MIPS_Processor
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v 
# -- Compiling module MIPS_Processor_TB
# 
# Top level modules:
# 	MIPS_Processor_TB
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v 
# -- Compiling module Multiplexer2to1
# 
# Top level modules:
# 	Multiplexer2to1
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v 
# -- Compiling module MUXRegisterFile
# 
# Top level modules:
# 	MUXRegisterFile
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v 
# -- Compiling module PC_Register
# 
# Top level modules:
# 	PC_Register
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v 
# -- Compiling module ProgramMemory
# 
# Top level modules:
# 	ProgramMemory
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v 
# -- Compiling module Register
# 
# Top level modules:
# 	Register
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v 
# -- Compiling module RegisterDiv
# 
# Top level modules:
# 	RegisterDiv
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v 
# -- Compiling module RegisterFile
# 
# Top level modules:
# 	RegisterFile
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v 
# -- Compiling module ShiftLeft2
# 
# Top level modules:
# 	ShiftLeft2
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:44 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v 
# -- Compiling module SignExtend
# 
# Top level modules:
# 	SignExtend
# End time: 05:35:44 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v 
# -- Compiling module Adder32bits
# 
# Top level modules:
# 	Adder32bits
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALU.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALU.v 
# -- Compiling module ALU
# 
# Top level modules:
# 	ALU
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v 
# -- Compiling module ALUControl
# 
# Top level modules:
# 	ALUControl
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v 
# -- Compiling module ANDGate
# 
# Top level modules:
# 	ANDGate
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Control.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Control.v 
# -- Compiling module Control
# 
# Top level modules:
# 	Control
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v 
# -- Compiling module DataMemory
# 
# Top level modules:
# 	DataMemory
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v 
# -- Compiling module DecoderRegisterFile
# 
# Top level modules:
# 	DecoderRegisterFile
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Definitions.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Definitions.v 
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v 
# -- Compiling module Forwarding_Unit
# 
# Top level modules:
# 	Forwarding_Unit
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 300 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v 
# -- Compiling module MIPS_Processor
# 
# Top level modules:
# 	MIPS_Processor
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v 
# -- Compiling module MIPS_Processor_TB
# 
# Top level modules:
# 	MIPS_Processor_TB
# End time: 05:35:50 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:50 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v 
# -- Compiling module Multiplexer2to1
# 
# Top level modules:
# 	Multiplexer2to1
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:01
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v 
# -- Compiling module MUXRegisterFile
# 
# Top level modules:
# 	MUXRegisterFile
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v 
# -- Compiling module PC_Register
# 
# Top level modules:
# 	PC_Register
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v 
# -- Compiling module ProgramMemory
# 
# Top level modules:
# 	ProgramMemory
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v 
# -- Compiling module Register
# 
# Top level modules:
# 	Register
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v 
# -- Compiling module RegisterDiv
# 
# Top level modules:
# 	RegisterDiv
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v 
# -- Compiling module RegisterFile
# 
# Top level modules:
# 	RegisterFile
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v 
# -- Compiling module ShiftLeft2
# 
# Top level modules:
# 	ShiftLeft2
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v 
# -- Compiling module SignExtend
# 
# Top level modules:
# 	SignExtend
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v 
# -- Compiling module Adder32bits
# 
# Top level modules:
# 	Adder32bits
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALU.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALU.v 
# -- Compiling module ALU
# 
# Top level modules:
# 	ALU
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v 
# -- Compiling module ALUControl
# 
# Top level modules:
# 	ALUControl
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v 
# -- Compiling module ANDGate
# 
# Top level modules:
# 	ANDGate
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Control.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Control.v 
# -- Compiling module Control
# 
# Top level modules:
# 	Control
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v 
# -- Compiling module DataMemory
# 
# Top level modules:
# 	DataMemory
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:51 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v 
# -- Compiling module DecoderRegisterFile
# 
# Top level modules:
# 	DecoderRegisterFile
# End time: 05:35:51 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Definitions.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Definitions.v 
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v 
# -- Compiling module Forwarding_Unit
# 
# Top level modules:
# 	Forwarding_Unit
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v 
# -- Compiling module MIPS_Processor
# 
# Top level modules:
# 	MIPS_Processor
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v 
# -- Compiling module MIPS_Processor_TB
# 
# Top level modules:
# 	MIPS_Processor_TB
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v 
# -- Compiling module Multiplexer2to1
# 
# Top level modules:
# 	Multiplexer2to1
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v 
# -- Compiling module MUXRegisterFile
# 
# Top level modules:
# 	MUXRegisterFile
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v 
# -- Compiling module PC_Register
# 
# Top level modules:
# 	PC_Register
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v 
# -- Compiling module ProgramMemory
# 
# Top level modules:
# 	ProgramMemory
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v 
# -- Compiling module Register
# 
# Top level modules:
# 	Register
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v 
# -- Compiling module RegisterDiv
# 
# Top level modules:
# 	RegisterDiv
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v 
# -- Compiling module RegisterFile
# 
# Top level modules:
# 	RegisterFile
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v 
# -- Compiling module ShiftLeft2
# 
# Top level modules:
# 	ShiftLeft2
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:52 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v 
# -- Compiling module SignExtend
# 
# Top level modules:
# 	SignExtend
# End time: 05:35:52 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Adder32bits.v 
# -- Compiling module Adder32bits
# 
# Top level modules:
# 	Adder32bits
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALU.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALU.v 
# -- Compiling module ALU
# 
# Top level modules:
# 	ALU
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ALUControl.v 
# -- Compiling module ALUControl
# 
# Top level modules:
# 	ALUControl
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ANDGate.v 
# -- Compiling module ANDGate
# 
# Top level modules:
# 	ANDGate
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Control.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Control.v 
# -- Compiling module Control
# 
# Top level modules:
# 	Control
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DataMemory.v 
# -- Compiling module DataMemory
# 
# Top level modules:
# 	DataMemory
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/DecoderRegisterFile.v 
# -- Compiling module DecoderRegisterFile
# 
# Top level modules:
# 	DecoderRegisterFile
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Definitions.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Definitions.v 
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v 
# -- Compiling module Forwarding_Unit
# 
# Top level modules:
# 	Forwarding_Unit
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor.v 
# -- Compiling module MIPS_Processor
# 
# Top level modules:
# 	MIPS_Processor
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v 
# -- Compiling module MIPS_Processor_TB
# 
# Top level modules:
# 	MIPS_Processor_TB
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Multiplexer2to1.v 
# -- Compiling module Multiplexer2to1
# 
# Top level modules:
# 	Multiplexer2to1
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:54 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/MUXRegisterFile.v 
# -- Compiling module MUXRegisterFile
# 
# Top level modules:
# 	MUXRegisterFile
# End time: 05:35:54 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/PC_Register.v 
# -- Compiling module PC_Register
# 
# Top level modules:
# 	PC_Register
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ProgramMemory.v 
# -- Compiling module ProgramMemory
# 
# Top level modules:
# 	ProgramMemory
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/Register.v 
# -- Compiling module Register
# 
# Top level modules:
# 	Register
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterDiv.v 
# -- Compiling module RegisterDiv
# 
# Top level modules:
# 	RegisterDiv
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/RegisterFile.v 
# -- Compiling module RegisterFile
# 
# Top level modules:
# 	RegisterFile
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/ShiftLeft2.v 
# -- Compiling module ShiftLeft2
# 
# Top level modules:
# 	ShiftLeft2
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v
# Model Technology ModelSim - Intel FPGA Edition vlog 10.5b Compiler 2016.10 Oct  5 2016
# Start time: 05:35:55 on May 17,2019
# vlog -reportprogress 30 -work work C:/Users/otis_/MIPSProcessor/SignExtend.v 
# -- Compiling module SignExtend
# 
# Top level modules:
# 	SignExtend
# End time: 05:35:55 on May 17,2019, Elapsed time: 0:00:00
# Errors: 0, Warnings: 0
cd C:/Users/otis_/MIPSProcessor
# Loading project MIPS_Processor
# Compile of SignExtend.v was successful.
# Compile of Adder32bits.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of ANDGate.v was successful.
# Compile of Control.v was successful.
# Compile of DataMemory.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of Definitions.v was successful.
# Compile of Forwarding_Unit.v was successful.
# Compile of MIPS_Processor.v was successful.
# Compile of MIPS_Processor_TB.v was successful.
# Compile of Multiplexer2to1.v was successful.
# Compile of MUXRegisterFile.v was successful.
# Compile of PC_Register.v was successful.
# Compile of ProgramMemory.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterDiv.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of ShiftLeft2.v was successful.
# 20 compiles, 0 failed with no errors.
# Compile of SignExtend.v was successful.
# Compile of Adder32bits.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of ANDGate.v was successful.
# Compile of Control.v was successful.
# Compile of DataMemory.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of Definitions.v was successful.
# Compile of Forwarding_Unit.v was successful.
# Compile of MIPS_Processor.v was successful.
# Compile of MIPS_Processor_TB.v was successful.
# Compile of Multiplexer2to1.v was successful.
# Compile of MUXRegisterFile.v was successful.
# Compile of PC_Register.v was successful.
# Compile of ProgramMemory.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterDiv.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of ShiftLeft2.v was successful.
# 20 compiles, 0 failed with no errors.
# Compile of DecoderRegisterFile.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of SignExtend.v was successful.
# Compile of Adder32bits.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of ANDGate.v was successful.
# Compile of Control.v was successful.
# Compile of DataMemory.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of Definitions.v was successful.
# Compile of Forwarding_Unit.v was successful.
# Compile of MIPS_Processor.v was successful.
# Compile of MIPS_Processor_TB.v was successful.
# Compile of Multiplexer2to1.v was successful.
# Compile of MUXRegisterFile.v was successful.
# Compile of PC_Register.v was successful.
# Compile of ProgramMemory.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterDiv.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of ShiftLeft2.v was successful.
# 20 compiles, 0 failed with no errors.
vsim -gui work.MIPS_Processor_TB
# vsim -gui work.MIPS_Processor_TB 
# Start time: 05:40:44 on May 17,2019
# Loading work.MIPS_Processor_TB
# Loading work.MIPS_Processor
# Loading work.Control
# Loading work.PC_Register
# Loading work.ProgramMemory
# Loading work.Adder32bits
# Loading work.Multiplexer2to1
# Loading work.RegisterFile
# Loading work.DecoderRegisterFile
# Loading work.Register
# Loading work.MUXRegisterFile
# Loading work.SignExtend
# Loading work.ALUControl
# Loading work.ALU
# Loading work.DataMemory
# Loading work.ANDGate
# Loading work.ShiftLeft2
# Loading work.RegisterDiv
# Loading work.Forwarding_Unit
# ** Warning: (vsim-3017) C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v(24): [TFMPC] - Too few port connections. Expected 5, found 4.
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV File: C:/Users/otis_/MIPSProcessor/MIPS_Processor.v
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor_TB.v(24): [TFMPC] - Missing connection for port 'PortIn'.
# ** Warning: (vsim-3017) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(108): [TFMPC] - Too few port connections. Expected 12, found 10.
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ControlUnit File: C:/Users/otis_/MIPSProcessor/Control.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(108): [PCDPC] - Port size (5) does not match connection size (3) for port 'ALUOp'. The port definition is at: C:/Users/otis_/MIPSProcessor/Control.v(28).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ControlUnit File: C:/Users/otis_/MIPSProcessor/Control.v
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(108): [TFMPC] - Missing connection for port 'Jump'.
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(108): [TFMPC] - Missing connection for port 'JumpSrc'.
# ** Warning: (vsim-3017) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(282): [TFMPC] - Too few port connections. Expected 6, found 3.
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ArithmeticLogicUnitControl File: C:/Users/otis_/MIPSProcessor/ALUControl.v
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(282): [TFMPC] - Missing connection for port 'RegWOut'.
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(282): [TFMPC] - Missing connection for port 'Jump'.
# ** Warning: (vsim-3722) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(282): [TFMPC] - Missing connection for port 'JumpSrc'.
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(437): [PCDPC] - Port size (1) does not match connection size (32) for port 'enable'. The port definition is at: C:/Users/otis_/MIPSProcessor/RegisterDiv.v(17).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/IFtoID_Register File: C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(460): [PCDPC] - Port size (1) does not match connection size (32) for port 'enable'. The port definition is at: C:/Users/otis_/MIPSProcessor/RegisterDiv.v(17).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/IDtoEX_Register File: C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(460): [PCDPC] - Port size (156) does not match connection size (151) for port 'DataInput'. The port definition is at: C:/Users/otis_/MIPSProcessor/RegisterDiv.v(18).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/IDtoEX_Register File: C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(481): [PCDPC] - Port size (1) does not match connection size (32) for port 'enable'. The port definition is at: C:/Users/otis_/MIPSProcessor/RegisterDiv.v(17).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/EXtoMEM_Register File: C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(500): [PCDPC] - Port size (1) does not match connection size (32) for port 'enable'. The port definition is at: C:/Users/otis_/MIPSProcessor/RegisterDiv.v(17).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/MEMtoWB_Register File: C:/Users/otis_/MIPSProcessor/RegisterDiv.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(517): [PCDPC] - Port size (6) does not match connection size (5) for port 'in_ExM_RegisterRd'. The port definition is at: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v(8).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ForwardingUnit File: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(517): [PCDPC] - Port size (6) does not match connection size (5) for port 'in_MW_RegisterRd'. The port definition is at: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v(9).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ForwardingUnit File: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(517): [PCDPC] - Port size (6) does not match connection size (5) for port 'in_IdEx_RegisterRs'. The port definition is at: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v(11).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ForwardingUnit File: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# ** Warning: (vsim-3015) C:/Users/otis_/MIPSProcessor/MIPS_Processor.v(517): [PCDPC] - Port size (6) does not match connection size (5) for port 'in_IdEx_RegisterRt'. The port definition is at: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v(12).
#    Time: 0 ps  Iteration: 0  Instance: /MIPS_Processor_TB/DUV/ForwardingUnit File: C:/Users/otis_/MIPSProcessor/Forwarding_Unit.v
# Compile of SignExtend.v was successful.
# Compile of Adder32bits.v was successful.
# Compile of ALU.v was successful.
# Compile of ALUControl.v was successful.
# Compile of ANDGate.v was successful.
# Compile of Control.v was successful.
# Compile of DataMemory.v was successful.
# Compile of DecoderRegisterFile.v was successful.
# Compile of Definitions.v was successful.
# Compile of Forwarding_Unit.v was successful.
# Compile of MIPS_Processor.v was successful.
# Compile of MIPS_Processor_TB.v was successful.
# Compile of Multiplexer2to1.v was successful.
# Compile of MUXRegisterFile.v was successful.
# Compile of PC_Register.v was successful.
# Compile of ProgramMemory.v was successful.
# Compile of Register.v was successful.
# Compile of RegisterDiv.v was successful.
# Compile of RegisterFile.v was successful.
# Compile of ShiftLeft2.v was successful.
# 20 compiles, 0 failed with no errors.
do sim.do
# Cannot open macro file: sim.do
do sim.do
# Cannot open macro file: sim.do
add wave -position end  sim:/MIPS_Processor_TB/clk
onerror {resume}
#  Warning: onerror command for use within macro
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk
add wave -noupdate /MIPS_Processor_TB/reset
add wave -noupdate /MIPS_Processor_TB/PortIn
add wave -noupdate /MIPS_Processor_TB/ALUResultOut
add wave -noupdate /MIPS_Processor_TB/PortOut
add wave -noupdate -divider PC
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ProgramCounter/NewPC
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ProgramCounter/PCValue
add wave -noupdate -divider ROM
add wave -noupdate /MIPS_Processor_TB/DUV/ROMProgramMemory/Instruction
add wave -noupdate -divider ALU
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/A
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/B
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/Shamt
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUOperation
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUResult
add wave -noupdate -divider RAM
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/WriteData
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/Address
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/MemWrite
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/MemRead
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/ReadData
add wave -noupdate {/MIPS_Processor_TB/DUV/RAMMememory/ram[1]}
add wave -noupdate {/MIPS_Processor_TB/DUV/RAMMememory/ram[0]}
add wave -noupdate -divider Branch
add wave -noupdate -label BEQ /MIPS_Processor_TB/DUV/BranchEQAndZero/C
add wave -noupdate -label BNE /MIPS_Processor_TB/DUV/BranchNEAndZero/C
add wave -noupdate -divider Jumps
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/Selector
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/Selector'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/MUX_Data0
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/MUX_Data0'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/MUX_Data1
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/MUX_Data1'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/MUX_Output
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForPC4BranchOrJump/MUX_Output'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/Selector
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/Selector'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/MUX_Data0
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/MUX_Data0'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/MUX_Data1
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/MUX_Data1'.
add wave -noupdate /MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/MUX_Output
# (vish-4014) No objects found matching '/MIPS_Processor_TB/DUV/MUX_ForJumpAddresOrRegister/MUX_Output'.
add wave -noupdate -divider RegFile
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_0
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_1
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_2
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_3
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_4
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_5
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_6
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_7
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_8
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_9
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_10
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_11
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_12
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_13
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_14
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_15
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_16
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_17
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_18
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_19
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_20
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_21
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_22
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_23
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_24
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_25
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_26
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_27
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_28
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_29
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_30
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_31
add wave -noupdate -divider RAM
add wave -noupdate -expand /MIPS_Processor_TB/DUV/RAMMememory/ram
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 126
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {57 ps}
