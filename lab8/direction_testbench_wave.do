onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /direction_testbench/dir
add wave -noupdate /direction_testbench/left
add wave -noupdate /direction_testbench/up
add wave -noupdate /direction_testbench/right
add wave -noupdate /direction_testbench/down
add wave -noupdate /direction_testbench/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3865 ps} 0}
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
configure wave -gridperiod 100
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {5904 ps}
