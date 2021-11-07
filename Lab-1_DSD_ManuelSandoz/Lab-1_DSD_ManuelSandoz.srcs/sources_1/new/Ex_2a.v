`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Manuel Sandoz
// Create Date: 09/06/2021 01:21:39 PM
//////////////////////////////////////////////////////////////////////////////////


module cir_2a(a,b,c,d,f);
  input a,b,c,d;
  output f;
  wire w1,w2,w3,w4,w5;
  
  and(w1, c,d);
  
  or(w2, w1,b);
  
  and(w3, w2,a);
  
  not(w4, c);
  and(w5, w4,b);
  
  or(f, w3,w5); 
  
endmodule
