`timescale 1ns / 1ps

module Test_1;

    reg clk, clr, sel, load;
    reg [3:0] A, B;
    wire [3:0] salida;

    Top_1 uut(.clk(clk), .clr(clr), .a(A), .b(B), .ld(load), .s(sel), .salida(salida));

    initial forever #10 clk = ~clk;

    initial begin
        clk =0; clr=1;
        load =0; sel=0;
        A=0; B=0;

        #40

        #20 clr=0; load=1; A=8; B=2;
        #20 A=14; B=3;
        #20 sel=1;
        #20 A=12; B=4;
        #20 sel=0;
        #20 load=0; A=7; B=3;
        #20 clr=1;
    end

    initial #300 $finish;

endmodule
