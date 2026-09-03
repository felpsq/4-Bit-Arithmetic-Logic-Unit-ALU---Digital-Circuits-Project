# 4-Bit Arithmetic Logic Unit (ALU)

This project consists of a 4-bit Arithmetic Logic Unit (ALU) developed for a Digital Circuits course at Universidade Estadual de Feira de Santana (UEFS).

The project was developed using structural Verilog and tested on a DE10-Lite FPGA board with Quartus II.

## About the Project

The ALU receives two 4-bit inputs, `A` and `B`, a carry-in input, and three selection bits that determine which operation will be performed.

The implemented operations are:

| Selection | Operation      |
| --------- | -------------- |
| `000`     | Addition       |
| `001`     | Addition       |
| `010`     | Subtraction    |
| `011`     | Multiplication |
| `100`     | XOR            |
| `101`     | AND            |
| `110`     | OR             |
| `111`     | Division       |

The result is displayed using the two 7-segment displays available on the DE10-Lite board.

## Main Features

* Addition and subtraction of 4-bit values
* 4-bit multiplication and division
* AND, OR and XOR operations
* Carry and borrow flags
* Division-by-zero detection
* Zero-result detection
* Result range detection
* 7-segment display output

## Implementation

The ALU was built using several smaller Verilog modules. Arithmetic operations were developed using basic digital circuits such as half-adders, full-adders and subtractors.

The project also uses multiplexers to select the operation and separate modules to handle the flags and the 7-segment displays.

The circuits were designed using truth tables, Boolean expressions and Karnaugh maps.

## Hardware

The project was implemented using the **DE10-Lite FPGA development board**.

The board's switches and push buttons are used as inputs, while the LEDs indicate status flags and the 7-segment displays show the result.

## Technologies

* Verilog HDL
* Quartus II
* FPGA
* DE10-Lite
* Digital Logic

## Contributors

* [Ericka Almeida de Lima](https://github.com/ErickaUEFS)
* [Gustavo Leão](https://github.com/GustavolLeao)
* [Felipe Queiroz](https://github.com/felpsq)

## Report

The complete project report is available in Portuguese in [`docs/Relatorio.pdf`](docs/Relatorio.pdf).

## Future Improvements

Some possible improvements for the project are adding another display to support values greater than 99 and allowing the result to be shown in other number systems, such as binary, hexadecimal and octal.
