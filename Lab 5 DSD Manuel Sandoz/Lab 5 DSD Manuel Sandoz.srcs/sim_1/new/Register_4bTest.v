`timescale 1ns / 1ps

module Register_4b_Top_test();
   reg clk, load, clr;
   reg [3:0] in;
   wire [3:0] out;

   Register_4b_Top uut (
      .load(load)
      , .clk(clk)
      , .in(in)
      , .out(out)
      , .clr(clr)
      );
   
   initial forever #10 clk = ~clk;
   initial begin
      clk=0; load=0; in=0; clr=0;
      
      #50
      #50 in=5; load=1;
      #70 in=9; load=0;
      #50 in=12; load=1;
      #50 in=14;
   end
   initial #300 $finish;
endmodule
