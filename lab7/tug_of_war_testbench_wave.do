onerror {resume}
quietly virtual function -install /tug_of_war_testbench -env /tug_of_war_testbench/#INITIAL#16(#ublk#217748360#16) { &{/tug_of_war_testbench/LEDR[8], /tug_of_war_testbench/LEDR[7], /tug_of_war_testbench/LEDR[6], /tug_of_war_testbench/LEDR[5], /tug_of_war_testbench/LEDR[4], /tug_of_war_testbench/LEDR[3], /tug_of_war_testbench/LEDR[2], /tug_of_war_testbench/LEDR[1], /tug_of_war_testbench/LEDR[0] }} LEDs
quietly WaveActivateNextPane {} 0
add wave -noupdate /tug_of_war_testbench/HEX0
add wave -noupdate /tug_of_war_testbench/HEX3
add wave -noupdate -label left {/tug_of_war_testbench/dut/sum[9]}
add wave -noupdate -label right /tug_of_war_testbench/dut/right_press/out
add wave -noupdate /tug_of_war_testbench/LEDs
add wave -noupdate -label reset {/tug_of_war_testbench/SW[9]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {273 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 97
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
WaveRestoreZoom {0 ps} {4120 ps}
