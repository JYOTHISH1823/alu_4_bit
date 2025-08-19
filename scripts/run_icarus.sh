#!/bin/bash

iverilog -o sim/alu_tb.out src/alu.v tb/alu_tb.v

# Run simulation
vvp sim/alu_tb.out

# View waveform
gtkwave sim/alu.vcd &
# this line opens the waveform viewer in the background
#can be done in linux or ubuntu
# if you are using windows, you may need to adjust the command accordingly
# or use a different waveform viewer compatible with your system