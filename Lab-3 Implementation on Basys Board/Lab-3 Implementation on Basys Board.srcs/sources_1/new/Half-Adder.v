`timescale 1ns / 1ps

module H2 (a, b, s, cout);
  input a,b;
  output s, cout;

  assign s = a ^ b;
  assign cout = a & b;
endmodule