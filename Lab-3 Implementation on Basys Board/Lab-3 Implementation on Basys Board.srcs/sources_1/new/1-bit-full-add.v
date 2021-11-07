`timescale 1ns / 1ps
// Create Date: 09/26/2021 04:08:47 PM

module obfa(
    input a, b, cin,
    output cout, sum
  );
  
  wire w1;

  assign sum = (a ^ b) ^ cin;   
  assign cout = (a & b) | ((a ^ b) & cin);
  
endmodule
