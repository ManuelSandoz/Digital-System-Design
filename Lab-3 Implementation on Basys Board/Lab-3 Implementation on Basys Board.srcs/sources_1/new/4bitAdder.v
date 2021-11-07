`timescale 1ns / 1ps
// Create Date: 09/26/2021 04:17:02 PM

module suma_4(
    input [3: 0] a, b, 
    input cin,
    output [3: 0] sum,
    output cout
  );
  
  wire w0, w1, w2;
  
  obfa s0(.a(a[0]), .b(b[0]), .cin(cin), .cout(w0), .sum(sum[0]));
  obfa s1(.a(a[1]), .b(b[1]), .cin(w0), .cout(w1), .sum(sum[1]));
  obfa s2(.a(a[2]), .b(b[2]), .cin(w1), .cout(w2), .sum(sum[2]));
  obfa s3(.a(a[3]), .b(b[3]), .cin(w2), .cout(cout), .sum(sum[3]));
  
endmodule
