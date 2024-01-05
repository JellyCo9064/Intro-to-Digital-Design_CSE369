# Create work library
vlib work

# Compile Verilog
#     All Verilog files that are part of this design should have
#     their own "vlog" line below.
# vlog "./lab8_test.sv"
# vlog "./direction.sv"
# vlog "./snakes_and_apples.sv"
# vlog "./triple_seg7.sv"
vlog "./lfsr_8.sv"
vlog "./apple_generator.sv"
# vlog "./length.sv"
# vlog "./grid_light.sv"
# vlog "./counter256.sv"
vlog "./col_select.sv"
vlog "./check_conflict.sv"

# vlog "./grid_light_testbench.sv"
# vlog "./snakes_and_apples_testbench.sv"
# vlog "./lab8_testbench.sv"
# vlog "./direction_testbench.sv"
# vlog "./lfsr_8_testbench.sv"
vlog "./apple_generator_testbench.sv"

# Call vsim to invoke simulator
#     Make sure the last item on the line is the name of the
#     testbench module you want to execute.
vsim -voptargs="+acc" -t 1ps -lib work apple_generator_testbench

# Source the wave do file
#     This should be the file that sets up the signal window for
#     the module you are testing.
do apple_generator_testbench_wave.do

# Set the window types
view wave
view structure
view signals

# Run the simulation
run -all

# End
