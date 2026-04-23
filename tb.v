`timescale 1ns/1ns

module Testbench();

    reg clk;
    wire[31:0] actual;
    wire[31:0] sig;

    initial clk = 0;
    //# means waith for this time, in this case 50
    always #50 clk = ~clk;

    ProgramCounter pc(
        .clk(clk),
        .pc_sig(sig),
        .pc_actual(actual)
    );

    Adder adder(
        .op1(4),
        .op2(actual),
        .res(sig)
    );

endmodule