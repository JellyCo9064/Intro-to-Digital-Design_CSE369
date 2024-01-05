onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand /snakes_and_apples_testbench/GrnPixels
add wave -noupdate -expand /snakes_and_apples_testbench/RedPixels
add wave -noupdate -radix decimal /snakes_and_apples_testbench/dut/snake_len
add wave -noupdate /snakes_and_apples_testbench/eating
add wave -noupdate /snakes_and_apples_testbench/reset
add wave -noupdate /snakes_and_apples_testbench/clk
add wave -noupdate /snakes_and_apples_testbench/game_over
add wave -noupdate /snakes_and_apples_testbench/dut/game_over_grid
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {211 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 151
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
WaveRestoreZoom {0 ps} {2 ns}
