`timescale 1ns/1ps

module top (
    input clk, reset, start, 
    output done,
    output [4:0] count
);

    wire countSentinel, cnten, clr;

    FSM fsm(.clk(clk), .reset(countSentinel), .start(start), .done(done), .cnten(cnten), .cntclr(clr));
    Counter cnt(.clk(clk), .reset(reset), .en(cnten), .clr(countSentinel), .out(count));

    assign countSentinel = count == 15 ? 1:0 | reset;

endmodule