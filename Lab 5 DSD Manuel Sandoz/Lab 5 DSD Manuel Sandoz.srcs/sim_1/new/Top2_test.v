`timescale 1ns / 1ps

module Top2_test();
   reg s, en, clk, ld, clr;
   reg [3:0] din;
   wire [3:0] out;
   
   Top2 uut(.din(din), .out(out), .s(s), .en(en), .clk(clk), .ld(ld), .clr(clr));
   
   initial forever #10 clk = ~clk;
   initial begin
      s=1; en=1; clk=0; ld=1; clr=0;

      #50 // wait
      #50 din=3;   //expected out = 4
      #50 din=5; s=0; ld=0;
      #50 din=10; s=1;
      #50 din=5; s=1; ld=1;
      #100 clr=0;
   end
   initial #350 $finish;
endmodule
