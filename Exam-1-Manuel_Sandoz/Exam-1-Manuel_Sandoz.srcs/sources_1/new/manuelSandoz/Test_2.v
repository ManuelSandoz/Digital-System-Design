`timescale 1ns / 1ps

module Test_2;

    reg [7:0] A, B, lim;
    reg clr, load, clk;
    wire [7:0] out;

    Top_2 uut(.a(A), .b(B), .lim(lim), .clk(clk), .clr(clr), .ld(load), .out(out));

    initial forever #10 clk = ~clk;

    initial begin 
        clk=0; clr=1;
        load=0; lim=0;
        A=0; B=0;

        #20;

        #20 clr=0; lim=4; A=12; B=4;
        #140 load=1;
        #20 A=8;
        #20 A=5;
        #20 A=3;
        #20 A=2;
        #20 clr=1;
    end

    initial #320 $finish;
endmodule
