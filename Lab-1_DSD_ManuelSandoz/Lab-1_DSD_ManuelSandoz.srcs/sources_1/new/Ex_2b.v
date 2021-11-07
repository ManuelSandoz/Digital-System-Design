`timescale 1ns / 1ps
// Engineer: Manuel Sandoz
// 
// Create Date: 09/06/2021 01:52:13 PM

module cir_2b(a,b,c,d,f);
  input a,b,c,d;
  output f;
  wire w1,w2,w3,w4,w5,w6,w7;
  
  // A`
  not(w1, a);
  
  //B`
  not(w2, b);
  
  //C`
  not(w3, c);
  
  and(w4, a,w2);
  and(w5, w1,b);
  or(w6, w4,w5);
  
  nor(w7, w3,d);
  
  and(f, w7,w6);
endmodule
