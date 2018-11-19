# simple picoblaze program
a very small assembly language program for the picoblaze architecture.
picoblaze is a soft core microprocessor design, typically implemented on FPGAs for prototyping purposes.

the source code of the assembly language program itself i've lost somehow (probably on someone else's machine),
the program.v file is generated by the picoblaze assembler/code-generator.

[transmitter.v](transmitter.v), [receiver.v](receiver.v), [out_interface.v](out_interface.v) are the UART transmitter, receiver, and UART interface to the picoblaze module [kcpsm6.v](kcpsm6.v), the [program.v](program.v) file is machine generated from the assembly source code, and would be translated into the ROM module on the FPGA.