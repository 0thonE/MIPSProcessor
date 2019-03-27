onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /MIPS_Processor_TB/clk
add wave -noupdate /MIPS_Processor_TB/reset
add wave -noupdate /MIPS_Processor_TB/PortIn
add wave -noupdate /MIPS_Processor_TB/ALUResultOut
add wave -noupdate /MIPS_Processor_TB/PortOut
add wave -noupdate -divider PC
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ProgramCOunter/NewPC
add wave -noupdate -radix hexadecimal /MIPS_Processor_TB/DUV/ProgramCOunter/PCValue
add wave -noupdate -divider ROM
add wave -noupdate /MIPS_Processor_TB/DUV/ROMProgramMemory/Instruction
add wave -noupdate -divider RegFile
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_2
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_3
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_16
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_17
add wave -noupdate /MIPS_Processor_TB/DUV/Register_File/MUXRegister1/Data_18
add wave -noupdate -divider ALU
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/A
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/B
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/Shamt
add wave -noupdate /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUOperation
add wave -noupdate -radix decimal /MIPS_Processor_TB/DUV/ArithmeticLogicUnit/ALUResult
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {72 ps} 0}
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
WaveRestoreZoom {68 ps} {83 ps}
