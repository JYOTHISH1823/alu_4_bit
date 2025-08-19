#!/bin/bash

iverilog -o sim/alu_tb.out src/alu.v tb/alu_tb.v

# Run simulation
vvp sim/alu_tb.out

# View waveform
gtkwave sim/alu.vcd &