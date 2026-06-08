# Verilog FIFO

## Description
A 4-Depth FIFO (First In First Out) memory implemented using Verilog HDL.

## Features
- 8-bit data width
- 4 memory locations
- Read Pointer
- Write Pointer
- Full Detection
- Empty Detection

## Files
- fifo.v
- tb_fifo.v
- fifo_waveform.png

## Simulation

Compile:
iverilog -o fifo.vvp fifo.v tb_fifo.v

Run:
vvp fifo.vvp

Open GTKWave:
gtkwave fifo.vcd

## Tools Used
- Verilog HDL
- Icarus Verilog
- GTKWave
- Ubuntu Linux
