`timescale 1ns / 1ps

module counter_test;

   reg clk, reset, enable, load;
   reg [3:0] in;
   wire [3:0] count;

   counter uut(
        .clk(clk)
      , .in(in)
      , .clr(reset)
      , .ld(load)
      , .out(count)
      , .en(enable)
      );
   
   initial forever #10 clk = ~clk;
   initial begin
      clk=0; reset=0; enable=0; in=4; load=0;
      #100
      
      #20 reset=1;
      #20 reset=0; in=7;
      #20 load=1;
      #20 enable=1; in=5; load=0;
      #20 load =1;
   end
   initial
      #300 $finish;
endmodule
