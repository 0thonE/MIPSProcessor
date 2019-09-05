onerror {resume}
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
add wave -noupdate -divider Branch
add wave -noupdate -label BEQ /MIPS_Processor_TB/DUV/BranchEQAndZero/C
add wave -noupdate -label BNE /MIPS_Processor_TB/DUV/BranchNEAndZero/C
add wave -noupdate -divider Jumps
add wave -noupdate -divider RAM
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/WriteData
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/Address
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/MemWrite
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/MemRead
add wave -noupdate /MIPS_Processor_TB/DUV/RAMMememory/ReadData
add wave -noupdate {/MIPS_Processor_TB/DUV/RAMMememory/ram[1]}
add wave -noupdate {/MIPS_Processor_TB/DUV/RAMMememory/ram[0]}
add wave -noupdate -divider RAM
add wave -noupdate -expand /MIPS_Processor_TB/DUV/RAMMememory/ram
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
