`timescale 1ns/1ps

module Top_1(
    input clk, clr, ld, s,
    input [3:0] a, b,
    output [3:0] salida
);

    wire[3:0] res0, res1, out;

    adder add(.a(a), .b(b), .result(res0));
    substractor sub(.a(a), .b(b), .result(res1));
    mux2t1 mux(.a(res0), .b(res1), .sel(s), .out(out));
    register regi(.clk(clk), .clr(clr), .ld(ld), .d(out), .q(salida));

endmodule