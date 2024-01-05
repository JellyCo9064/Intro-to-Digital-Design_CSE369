onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /nordstrom_testbench/stolen
add wave -noupdate /nordstrom_testbench/discounted
add wave -noupdate /nordstrom_testbench/U
add wave -noupdate /nordstrom_testbench/P
add wave -noupdate /nordstrom_testbench/C
add wave -noupdate /nordstrom_testbench/M
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {168 ps}
