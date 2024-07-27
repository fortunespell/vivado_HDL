# vivado_HDL
The simulation displays waveforms over time, illustrating the behavior of basic digital components like counters, decoders, multiplexers, encoders, and flip-flops. The simulations demonstrate the fundamental building blocks of digital systems.


## Binary-Coded Decimal (BCD) Counter
### Overview
This project includes two Verilog modules: bcdtb (testbench) and bcdcounter. The bcdcounter module is a 4-bit BCD (Binary-Coded Decimal) counter which counts from 0 to 9 in binary representation. The bcdtb module serves as a testbench to simulate and verify the functionality of the bcdcounter.

The bcdtb module is a testbench that simulates the behavior of the bcdcounter module. It includes a clock signal and a reset signal. The bcdcounter instance is created within this testbench to test its functionality.

Ports

clk: Clock signal (reg)

rst: Reset signal (reg)

count: 4-bit output from the BCD counter (wire)

Functionality

The clk signal is initialized to 0 and toggled every 10 time units.

The rst signal is initially set to 1, then deasserted (set to 0) after 20 time units to start the counting process.

### Simulation
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20bcd.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20count.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20decoder.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20deff.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20jk.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20mux.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20mux.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20prienc.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060demux.png)
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec60%20enc.png)

