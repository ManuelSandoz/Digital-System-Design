`timescale 1ns / 1ps

module ex1_sim();
  reg i0, i1, i2, i3, s0, s1;
  wire out;
  
  ex1 uut(.i0(i0), .i1(i1), .i2(i2), .i3(i3), .s0(s0), .s1(s1), .out(out));
  
  initial begin
    i0 = 0; i1 = 0; i2 = 0; i3 = 0; s0 = 0; s1 = 0; #100;
    
    i0 = 1; #10;
    i0 = 0; i3 = 1; #10;
    s1 = 1; #10;
    i1 = 1; s0 = 0; s1 = 1; #10;
    i2 = 1; i1 = 0; s1 = 0; #10;
    
  end
endmodule
