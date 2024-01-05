onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/seg7_testbench/leds[6]}
add wave -noupdate {/seg7_testbench/leds[5]}
add wave -noupdate {/seg7_testbench/leds[4]}
add wave -noupdate {/seg7_testbench/leds[3]}
add wave -noupdate {/seg7_testbench/leds[2]}
add wave -noupdate {/seg7_testbench/leds[1]}
add wave -noupdate {/seg7_testbench/leds[0]}
add wave -noupdate {/seg7_testbench/bcd[3]}
add wave -noupdate {/seg7_testbench/bcd[2]}
add wave -noupdate {/seg7_testbench/bcd[1]}
add wave -noupdate {/seg7_testbench/bcd[0]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {50 ps} 0}
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
