onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /grid_light_testbench/green_light_on
add wave -noupdate /grid_light_testbench/head
add wave -noupdate -radix decimal /grid_light_testbench/dut/counter/count
add wave -noupdate /grid_light_testbench/dut/state_r
add wave -noupdate /grid_light_testbench/left
add wave -noupdate /grid_light_testbench/up
add wave -noupdate /grid_light_testbench/right
add wave -noupdate /grid_light_testbench/down
add wave -noupdate /grid_light_testbench/eating
add wave -noupdate -radix decimal /grid_light_testbench/length
add wave -noupdate /grid_light_testbench/dir
add wave -noupdate /grid_light_testbench/clk
add wave -noupdate /grid_light_testbench/reset
add wave -noupdate -radix binary /grid_light_testbench/dut/game_over_in
add wave -noupdate /grid_light_testbench/dut/game_over_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1160 ps} 0}
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
WaveRestoreZoom {0 ps} {2556 ps}
