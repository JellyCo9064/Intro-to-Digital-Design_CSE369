onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /counter256_testbench/count
add wave -noupdate -radix decimal /counter256_testbench/start_val
add wave -noupdate -radix unsigned /counter256_testbench/init_val
add wave -noupdate /counter256_testbench/enable
add wave -noupdate /counter256_testbench/clk
add wave -noupdate /counter256_testbench/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {171 ps} 0}
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
