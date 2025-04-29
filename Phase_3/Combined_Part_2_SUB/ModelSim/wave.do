onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /part_2_combined_tb/clock
add wave -noupdate /part_2_combined_tb/reset
add wave -noupdate -radix hexadecimal /part_2_combined_tb/Instruction_input
add wave -noupdate /part_2_combined_tb/Instruction_wren
add wave -noupdate -divider {ID Stage}
add wave -noupdate -radix hexadecimal /part_2_combined_tb/IF_ID_Instruction
add wave -noupdate -divider {EX Stage}
add wave -noupdate -radix decimal /part_2_combined_tb/ID_EX_Read_data_1
add wave -noupdate -radix decimal /part_2_combined_tb/ID_EX_Read_data_2
add wave -noupdate -radix decimal /part_2_combined_tb/ID_EX_Sign_extend
add wave -noupdate -divider {MEM Stage}
add wave -noupdate -radix decimal /part_2_combined_tb/EX_MEM_Branch_address
add wave -noupdate -radix decimal /part_2_combined_tb/EX_MEM_ALU_output
add wave -noupdate /part_2_combined_tb/MEM_PC_Select
add wave -noupdate -divider {WB Stage}
add wave -noupdate -radix decimal /part_2_combined_tb/MEM_WB_Data_memory_out
add wave -noupdate -radix decimal /part_2_combined_tb/WB_Write_back_data
add wave -noupdate -radix unsigned /part_2_combined_tb/WB_Write_back_register
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 276
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
WaveRestoreZoom {0 ps} {140634 ps}
