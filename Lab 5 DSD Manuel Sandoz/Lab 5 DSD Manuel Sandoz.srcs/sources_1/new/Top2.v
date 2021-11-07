`timescale 1ns / 1ps

module Top2(
   input [3:0] din,
   output [3:0] out,
   input s, en, clk, ld, clr
   );
   
   wire [3:0] mo, ro;
   
   Mux mux (.s(s), .din0(out), .din1(din), .mout(mo));
   counter count (.in(mo), .clr(clr), .clk(clk), .ld(ld), .en(en), .out(ro));
   Registro registro (.Din(ro), .clk(clk), .ld(ld), .clr(clr), .Dout(out));
endmodule
