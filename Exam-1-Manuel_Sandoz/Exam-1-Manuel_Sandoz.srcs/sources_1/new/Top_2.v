`timescale 1ns / 1ps

module Top_2(
        input [7:0] a, b, lim,
        input clk, clr, ld,
        output [7:0] out
    );

    wire out1;
    comparador comp(.a(a), .b(b), .out(out1));
    contador count(.clk(clk), .ld(ld), .reset(clr), .en(out1), .lim(lim), .din(a), .out(out));

endmodule