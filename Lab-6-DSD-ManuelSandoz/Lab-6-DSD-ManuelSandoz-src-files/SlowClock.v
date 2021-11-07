`timescale 1ns / 1ps

module slowClock(
  input clk,
  output slowClock
);

  reg [25:0] count = 0;
  reg clk_out;
  
  always @(posedge clk) begin
    count <= count + 1;
    if (count == 10_000_000) begin
      count <= 0;
      clk_out <= ~clk_out;
    end
  end
  
  assign slowClock = clk_out;
endmodule