onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clock /part_1_combined_tb/clock
add wave -noupdate -label Reset /part_1_combined_tb/reset
add wave -noupdate -divider Inittialization
add wave -noupdate -label {Instruction Input} -radix hexadecimal /part_1_combined_tb/Instruction_input
add wave -noupdate -label {Instruction wren} /part_1_combined_tb/Instruction_wren
add wave -noupdate -divider {IF Section}
add wave -noupdate -label {Instruction Output} -radix hexadecimal /part_1_combined_tb/Instruction_out
add wave -noupdate -divider {ID Section}
add wave -noupdate -label {Read Data 1} -radix decimal /part_1_combined_tb/Read_data_1
add wave -noupdate -label {Read Data 2} -radix decimal /part_1_combined_tb/Read_data_2
add wave -noupdate -label {Sign Extend} -radix decimal /part_1_combined_tb/Sign_extend
add wave -noupdate -divider {EX Section}
add wave -noupdate -label {Branch Address} -radix decimal /part_1_combined_tb/Branch_address
add wave -noupdate -label {ALU Output} -radix decimal /part_1_combined_tb/ALU_output
add wave -noupdate -divider {MEM Section}
add wave -noupdate -label {Data Memory Out} -radix decimal /part_1_combined_tb/Data_memory_out
add wave -noupdate -label {PC Select (PCSrc)} /part_1_combined_tb/PC_Select
add wave -noupdate -divider {WB Section}
add wave -noupdate -label {Write Back Data} -radix decimal /part_1_combined_tb/Write_back_data
add wave -noupdate -label {Write Back Register} -radix unsigned /part_1_combined_tb/Write_back_register
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {599514 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 145
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
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
WaveRestoreZoom {142931 ps} {271443 ps}
