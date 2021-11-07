`timescale 1ns / 1ps

module Register_4b_Top(
   input load, clk, clr,
   input [3:0] in,
   output [3:0] out
   );
   
   wire [3:0] out;
   
   assign w0 = (out[0] & ~load) | (in[0] & load);
   assign w1 = (out[1] & ~load) | (in[1] & load);
   assign w2 = (out[2] & ~load) | (in[2] & load);
   assign w3 = (out[3] & ~load) | (in[3] & load);
   
   FF D0 (.D(w0), .clk(clk), .clr(clr), .Q(out[0]));
   FF D1 (.D(w1), .clk(clk), .clr(clr), .Q(out[1]));
   FF D2 (.D(w2), .clk(clk), .clr(clr), .Q(out[2]));
   FF D3 (.D(w3), .clk(clk), .clr(clr), .Q(out[3]));
   
endmodule
