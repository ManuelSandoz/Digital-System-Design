`timescale 1ns / 1ps
module cir_1a_sim();
  reg a,b,c,d;
  wire out;
  
  cir_1a uut(.A(a), .B(b), .C(c), .D(d), .x(out));
  initial begin
    #100 a=0; b=0; c=1; d=1;
    #100 a=1; b=0; c=1; d=0;
    #100 a=1; b=1; c=0; d=0;
    #100 a=0; b=0; c=1; d=1;
    #100 a=1; b=0; c=1; d=1;
    #100 a=1; b=1; c=1; d=1;
    #100 a=1; b=1; c=0; d=1;    
  end
endmodule
