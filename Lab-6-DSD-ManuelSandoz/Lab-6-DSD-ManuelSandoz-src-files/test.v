`timescale 1ns / 1ps

module test();
    reg clk, reset, start;
    wire done;
    wire [4:0] count;

    top uut(.clk(clk), .reset(reset), .start(start), .done(done), .count(count));

    initial forever #10 clk = ~clk;
        initial begin
        clk = 0; reset = 1; start = 0;
        #50; reset = 0;
        #50; start = 1;
        #400; start = 0;
        #300; start = 1; reset = 1;
        end
    initial #900 $finish;
    
endmodule