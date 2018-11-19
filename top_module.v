
module top_module (
input wire clk,reset,RX,
output reg TX,alarm,shutdown
);













kcpsm6 (.address, instruction, bram_enable, in_port, out_port, port_id, write_strobe, k_write_strobe, read_strobe, interrupt, interrupt_ack, sleep, reset, clk) ;
