`timescale 1ns/1ns

module ProgramCounter(

    input clk,
    input [31:0] pc_sig,
    output reg[31:0] pc_actual
);

    initial pc_actual = 0;

    always @(posedge clk) pc_actual = pc_sig;

endmodule

