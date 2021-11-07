`timescale 1ns / 1ps
 
// Engineer: Manuel Sandoz Santiago
// Create Date: 10/04/2021 03:03:57 PM

module M(
      input [3:0] z, 
      input o,
      output [3:0] s
    );
    
    reg [3:0] s; 
    reg [3:0] res;
    reg cout, cout1, cout2, cout3;
    
    initial begin
      s = 0;
    end
      
      always @(z, o) begin
        if (o == 0)
        res = 0;
        else if (o == 1)
        res = 6;

        s[0] = (z[0] ^ res[0]);
        cout = (z[0] & res[0]);
        
        s[1] = (z[1] ^ res[1]) ^ cout;
        cout1 = ((z[1] ^ res[1]) & cout) | (z[1] & res[1]);
              
        s[2] = (z[2] ^ res[2]) ^ cout1;
        cout2 = ((z[2] ^ res[2]) & cout1) | (z[2] & res[2]);
        
        s[3] = (z[3] ^ res[3]) ^ cout2;
      end
endmodule
