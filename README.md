# multiplexer-6-ways-of-variations
This repository contains a project developed in Quartus II to implement and simulate a digital multiplexer. The objective is to demonstrate the design, simulation and synthesis of digital circuits using Quartus II, a powerful FPGA development tool, in the Linux environment. 
A 4-bit multiplexer (MUX) is an electronic device that selects one of several data inputs (in this case, 4 inputs of 1 bit each) and forwards this selected input to the output. Selection is controlled by a set of control signals called selection bits.

For a 4-input multiplexer, 2 selection bits (S0 and S1) are required because 2 bits can represent 4 combinations (00, 01, 10, 11). Each combination of the selection bits determines which of the 4 inputs (D0, D1, D2, D3) will be connected to the output (Y).

The basic logic is:

When the select bits are 00, output Y is equal to input D0.
When the select bits are 01, output Y is equal to input D1.
When the select bits are 10, output Y is equal to input D2.
When the select bits are 11, output Y is equal to input D3.
In short, the multiplexer works like a controlled switch that chooses a specific input to pass to the output, based on the selection bits.
