`timescale 1ns / 1ps


module ex3(
  input a0, a1, a2, a3, cin,
  output s0, s1, s2, s3, cout
);

  wire y1, y2, y3;
  
  assign s0 = a0 ^ cin;
  assign y1 = a0 & cin;
  assign s1 = a1 ^ y1;
  assign y2 = a1 & y1;
  assign s2 = a2 ^ y2;
  assign y3 = a2 & y2;
  assign s3 = a3 ^ y3;
  assign cout = a3 & y3;
  
endmodule
