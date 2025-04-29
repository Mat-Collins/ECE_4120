onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Clock /part_3_combined_tb/clock
add wave -noupdate -label Reset /part_3_combined_tb/reset
add wave -noupdate -divider Initialization
add wave -noupdate -label {Instruction Input} -radix hexadecimal /part_3_combined_tb/instr_input
add wave -noupdate -label {Instruction wren} /part_3_combined_tb/instr_mem_wren
add wave -noupdate -divider {ID Stage}
add wave -noupdate -label {IF/ID Instruction} -radix hexadecimal /part_3_combined_tb/IF_ID_instruction
add wave -noupdate -divider {EX Stage}
add wave -noupdate -label {ID/EX Read Data 1} -radix decimal /part_3_combined_tb/ID_EX_read_data_1
add wave -noupdate -label {ID/EX Read Data 2} -radix decimal /part_3_combined_tb/ID_EX_read_data_2
add wave -noupdate -label {ID/EX Sign Extend} -radix decimal /part_3_combined_tb/ID_EX_sign_extend
add wave -noupdate -divider {MEM Stage}
add wave -noupdate -label {EX/MEM Branch Address} -radix decimal /part_3_combined_tb/EX_MEM_branch_address
add wave -noupdate -label {EX/MEM ALU Output} -radix decimal /part_3_combined_tb/EX_MEM_ALU_output
add wave -noupdate -label {PC Select (PCSrc)} /part_3_combined_tb/MEM_PC_select
add wave -noupdate -divider {WB Stage}
add wave -noupdate -label {MEM/WB Data Memory Out} -radix decimal /part_3_combined_tb/MEM_WB_data_mem_out
add wave -noupdate -label {Write Back Data} -radix decimal /part_3_combined_tb/WB_write_back_data
add wave -noupdate -label {Write Back Register} -radix unsigned /part_3_combined_tb/WB_write_back_reg
add wave -noupdate -divider {Forwarding Control}
add wave -noupdate -label {RS Register Forwarding} /part_3_combined_tb/Forward_A
add wave -noupdate -label {RT Register Forwarding} /part_3_combined_tb/Forward_B
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
WaveRestoreCursors {{Cursor 1} {599374 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
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
WaveRestoreZoom {344064 ps} {573440 ps}
