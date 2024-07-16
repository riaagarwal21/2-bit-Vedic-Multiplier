# 2-bit Vedic Multiplier

A 2-bit Vedic multiplier uses the "Urdhva Tiryakbhyam" (Vertically and Crosswise) algorithm from ancient Indian Vedic mathematics to multiply two 2-bit binary numbers. This efficient method breaks the multiplication process into smaller steps, producing a 4-bit output. It simplifies hardware design and speeds up computations in digital circuits.

## Description

This project includes the implementation of a 2-bit Vedic multiplier in SystemVerilog. The design is broken down into the main multiplier module and a half adder module. Additionally, a self-checking testbench is provided to verify the correctness of the multiplier.

## File Structure

- `vedicMul_2.sv`: The main module for the 2-bit Vedic multiplier.
- `halfAdder.sv`: The half adder module used within the Vedic multiplier.
- `testbench.sv`: The self-checking testbench to test the Vedic multiplier.

## Modules

### Vedic Multiplier (`vedicMul_2.sv`)

This module multiplies two 2-bit binary numbers using the Vedic mathematics algorithm and produces a 4-bit output.

#### Ports:
- **Inputs:**
  - `a [1:0]`: 2-bit binary input.
  - `b [1:0]`: 2-bit binary input.
- **Outputs:**
  - `m [3:0]`: 4-bit binary output representing the product of `a` and `b`.

### Half Adder (`halfAdder.sv`)

A simple half adder module used in the Vedic multiplier to perform addition of single-bit binary numbers.

#### Ports:
- **Inputs:**
  - `a`: Single-bit binary input.
  - `b`: Single-bit binary input.
- **Outputs:**
  - `sum`: Single-bit binary sum output.
  - `carry`: Single-bit binary carry output.

### Testbench (`testbench.sv`)

A self-checking testbench to verify the functionality of the Vedic multiplier. It tests all possible combinations of 2-bit inputs and compares the results with the expected 4-bit output.

## Simulation Instructions

To simulate the design, follow these steps:

1. **Ensure all files are in the same directory**: Save the provided SystemVerilog code snippets as `vedicMul_2.sv`, `halfAdder.sv`, and `testbench.sv`.

2. **Compile the design and testbench**: Open your Verilog simulation tool and compile the files.

To get a local copy of the project, you can clone the repository using the below mentioned command:

      git clone https://github.com/riaagarwal21/2-bit-Vedic-Multiplier
