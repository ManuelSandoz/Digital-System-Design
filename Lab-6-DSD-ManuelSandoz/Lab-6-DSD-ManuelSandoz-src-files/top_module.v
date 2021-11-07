`timescale 1ns/1ps

module top (
    input clk, reset, start, 
    output done,
    output [4:0] count
);

    wire countSentinel, cnten, clr, slowedClock;
    
    slowClock sc(.clk(clk), .slowClock(slowedClock)); 

    FSM fsm(.clk(slowedClock), .reset(countSentinel), .start(start), .done(done), .cnten(cnten), .cntclr(clr));
    Counter cnt(.clk(slowedClock), .reset(reset), .en(cnten), .clr(countSentinel), .out(count));

    assign countSentinel = count == 15 ? 1:0 | reset;

endmodule