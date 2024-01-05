onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[0]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[1]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[2]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[3]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[4]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[5]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[6]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[7]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[8]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[9]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[10]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[11]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[12]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[13]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[14]}
add wave -noupdate -expand -group RedPixels {/lab8_testbench/dut/RedPixels[15]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[0]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[1]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[2]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[3]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[4]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[5]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[6]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[7]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[8]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[9]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[10]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[11]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[12]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[13]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[14]}
add wave -noupdate -expand -group GrnPixels {/lab8_testbench/dut/GrnPixels[15]}
add wave -noupdate /lab8_testbench/KEY
add wave -noupdate /lab8_testbench/dut/eating
add wave -noupdate /lab8_testbench/dut/game_over
add wave -noupdate /lab8_testbench/dut/snake/game_over_grid
add wave -noupdate /lab8_testbench/clk
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1884 ps} 0}
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
WaveRestoreZoom {0 ps} {4 ns}
