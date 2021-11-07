`timescale 1ns / 1ps

// Engineer: Manuel Sandoz Santiago
// Create Date: 10/04/2021 12:41:08 PM

module H(
    input [3:0] x, y,
    input cin,
    output [3:0] z, 
    output cout3
  );
    
    reg [3:0] z; 
    reg cout0, cout1, cout2, cout3;
    
    initial begin
      z = 0;
      cout3 = 0;
    end

    always @(x, y, cin) begin
      z[0] = (x[0] ^ y[0]) ^ cin;
      cout0 = ((x[0] ^ y[0]) & cin) | (x[0] & y[0]);
      
      z[1] = (x[1] ^ y[1]) ^ cout0;
      cout1 = ((x[1] ^ y[1]) & cout0) | (x[1] & y[1]);
      
      z[2] = (x[2] ^ y[2]) ^ cout1;
      cout2 = ((x[2] ^ y[2]) & cout1) | (x[2] & y[2]);
      
      z[3] = (x[3] ^ y[3]) ^ cout2;
      cout3 = ((x[3] ^ y[3]) & cout2) | (x[3] & y[3]);     
      end
endmodule
