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
Up Counter
Overview
This project includes a Verilog module named updown, which implements a 4-bit up counter. The counter increments its value on each rising edge of the clock signal and can be reset to zero asynchronously.

updown Module
The updown module takes a clock input (clk) and a reset input (rst), and produces a 4-bit count output (count).

Ports
clk: Clock input
rst: Reset input (active high)
count: 4-bit count output (reg)
Functionality
On the rising edge of the clock (clk):
If rst is asserted (high), the count is reset to 4'b0000.
Otherwise, the count is incremented by 1.

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20count.png)

## 2-to-4 Line Decoder

### Overview

This project includes a Verilog module named decoder, which is a 2-to-4 line decoder. The decoder takes a 2-bit binary input and decodes it into a 4-bit one-hot output.

decoder Module

The decoder module takes a 2-bit input and produces a 4-bit output. Depending on the value of the 2-bit input, one of the four output bits is set to 1, while the others are set to 0.

Ports

i: 2-bit binary input

y: 4-bit one-hot output (reg)

Functionality

The output y is determined based on the value of the input i using a combinational always block.

The case statement is used to map each possible value of i to a unique one-hot encoded value of y.

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20decoder.png)

## D Flip-Flop
### Overview

This project includes a Verilog module named dflipflop, which implements a D-type flip-flop. The flip-flop captures the value of the data input (D) on the rising edge of the clock signal and holds this value until the next rising edge. It also has a reset input to set the output to 0 asynchronously.

dflipflop Module

The dflipflop module captures the value of din (data input) on the rising edge of the clk (clock) signal and stores it in q. If rst (reset) is asserted, the output q is set to 0 regardless of the clock signal.

Ports

clk: Clock input

rst: Reset input (active high)

din: Data input

q: Data output (reg)

Functionality

On the rising edge of clk or when rst is asserted:

If rst is asserted, q is set to 0.

Otherwise, q captures the value of din.

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20deff.png)

## JK Flip-Flop
### Overview

This project includes a Verilog module named jkflipflop, which implements a JK flip-flop. The JK flip-flop has two control inputs (J and K), a clock input, and two asynchronous inputs (reset and preset). It changes its state based on the J and K inputs at the falling edge of the clock.

jkflipflop Module

The jkflipflop module takes a clock input (clk), a reset input (reset), a preset input (preset), and a 2-bit control input (jk). It produces a single output (q).

Ports

clk: Clock input

reset: Asynchronous reset input (active high)

preset: Asynchronous preset input (active high)

jk: 2-bit JK control input

q: Output (reg)

Functionality

On the falling edge of the clock (clk):

If reset is asserted, the output q is set to 0.

If preset is asserted, the output q is set to 1.

Otherwise, the output q changes based on the value of jk:

1. jk == 2'b00: No change (q remains the same).
2. jk == 2'b01: Reset (q is set to 0).
3. jk == 2'b10: Set (q is set to 1).
4. jk == 2'b11: Toggle (q is inverted).

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20jk.png)

## 8-to-1 Multiplexer
### Overview

This project includes a Verilog module named mux, which is an 8-to-1 multiplexer. The multiplexer takes an 8-bit input and a 3-bit select signal, and outputs the value of one of the 8 input bits based on the select signal.

mux Module

The mux module takes an 8-bit input i and a 3-bit select signal s, and produces a single-bit output y.

Ports

i: 8-bit input data

s: 3-bit select input

y: Single-bit output (reg)

Functionality

The output y is determined by the value of the select signal s.

The case statement is used to select the corresponding bit from i based on the value of s.

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20mux.png)

## 8-to-3 Priority Encoder
### Overview

This project includes a Verilog module named encoderpri, which is an 8-to-3 line priority encoder. The encoder takes an 8-bit input and converts it into a 3-bit binary code based on the highest-order active input bit. It also includes an enable signal to control the operation of the encoder.

encoderpri Module

The encoderpri module takes an 8-bit input d and an enable signal en, and produces a 3-bit binary output b.

Ports

d: 8-bit input data

en: Enable signal (active low)

b: 3-bit binary output (reg)

Functionality

If the enable signal en is high (active), the output b is set to 3'b000.

If the enable signal en is low, the module encodes the highest-order active input bit from d into the corresponding 3-bit binary value. The priority is given to the highest bit, starting from d[7] down to d[0].

If none of the input bits in d are active, the output b is set to 3'b000.

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060%20prienc.png)

## 1-to-4 Line Demultiplexer

### Overview

This project includes a Verilog module named demux14, which is a 1-to-4 line demultiplexer. The demultiplexer takes a single input and routes it to one of the four outputs based on a 2-bit select signal.

demux14 Module

The demux14 module takes a single-bit input and a 2-bit select signal and produces a 4-bit output where only one bit is active (set to the input value) based on the select signal.

Ports

i: 1-bit input

s: 2-bit select input

y: 4-bit output (reg)

Functionality

The output y is initialized to 4'b0000.

The case statement is used to assign the value of i to the corresponding bit of y based on the value of the select signal s.

### Simulation

![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec060demux.png)

## 8-to-3 Line Encoder
### Overview

This project includes a Verilog module named encoder, which is an 8-to-3 line priority encoder. The encoder takes an 8-bit input and converts it into a 3-bit binary code based on the highest-order active input. It also includes an enable signal to control the operation of the encoder.

encoder Module

The encoder module takes an 8-bit input d and an enable signal en, and produces a 3-bit binary output b.

Ports

d: 8-bit input data

en: Enable signal (active low)

b: 3-bit binary output (reg)

Functionality

If the enable signal en is high (active), the output b is set to 3'b000.

If the enable signal en is low, the module encodes the active input from d into the corresponding 3-bit binary value. Only one bit in d should be high at any time.

If none of the input bits in d are active, the output b is set to 3'bZZZ (high impedance state).


### Simulation
![image](https://github.com/fortunespell/vivado_HDL/blob/main/outputs/rv21ec60%20enc.png)

