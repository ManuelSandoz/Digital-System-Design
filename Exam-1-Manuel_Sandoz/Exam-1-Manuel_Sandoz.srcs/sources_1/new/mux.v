`timescale 1ns / 1ps

module mux2t1 (
        input [3:0] a, b,
        input sel,
        output [3:0] out
    );

    reg [3:0] out;

    always @(posedge sel, a, b)
        if (sel)
            out = b;
        else
            out = a;
endmodule
