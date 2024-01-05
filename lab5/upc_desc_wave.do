onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 25 /upc_desc_testbench/HEX5
add wave -noupdate -height 25 /upc_desc_testbench/HEX4
add wave -noupdate -height 25 /upc_desc_testbench/HEX3
add wave -noupdate -height 25 /upc_desc_testbench/HEX2
add wave -noupdate -height 25 /upc_desc_testbench/HEX1
add wave -noupdate -height 25 /upc_desc_testbench/HEX0
add wave -noupdate -height 25 -group UPC -height 25 /upc_desc_testbench/U
add wave -noupdate -height 25 -group UPC -height 25 /upc_desc_testbench/P
add wave -noupdate -height 25 -group UPC -height 25 /upc_desc_testbench/C
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
WaveRestoreZoom {0 ps} {84 ps}
