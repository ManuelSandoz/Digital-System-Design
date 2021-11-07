`timescale 1ns / 1ps

module sumador (a, b, sum, cout);

  input [1: 0]  a , b;
  output [1: 0]  sum;
  output cout;
  wire c0;

  H2 m(.a(a[0]), .b(b[0]), .s(sum[0]), .cout(c0));

  H1 p(.a(a[1]), .b(b[1]), .cin(c0), .s(sum[1]), .cout(cout));

endmodule