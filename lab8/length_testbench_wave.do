onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /length_testbench/snake_length
add wave -noupdate /length_testbench/inc
add wave -noupdate /length_testbench/clk
add wave -noupdate /length_testbench/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {34838 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {33320 ps} {37764 ps}
