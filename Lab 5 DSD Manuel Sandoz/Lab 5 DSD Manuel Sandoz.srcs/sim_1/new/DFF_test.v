`timescale 1ns / 1ps
module DFF_test;
   reg d, clk, clr;
   wire q, qn;
   
   FF uut (
        .D(d)
      , .clk(clk)
      , .clr(clr)
      , .Q(q)
      , .Qn(qn)
      );
      
   initial forever #10 clk = ~clk;
   initial begin 
      clk=0; d=0; clr=0;
      
      #100
      #40 d = 0;
      #40 d = 0;
      #40 d = 1;
      #40 d = 1;   
   end
   initial
      #300 $finish;
endmodule
