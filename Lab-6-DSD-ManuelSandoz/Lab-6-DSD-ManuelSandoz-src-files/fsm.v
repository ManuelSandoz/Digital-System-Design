`timescale 1ns/1ps

module FSM (
    input clk, reset, start,
    output done, cnten, cntclr
);

    parameter INIT = 0;
    parameter COUNT = 1;

    reg done, cnten, cntclr;
    reg state, nextState;

    always @(posedge clk) begin
        if (reset) begin
            state <= INIT;
            cntclr <= 1;
        end
        else
            state <= nextState;
    end

    always @(*) begin
        cnten = 0;
        cntclr = 0;
        nextState = state;
        done = 0;

        case (state)
            INIT: begin
                done = 1;

                if (start) begin
                    nextState = COUNT;
                    cntclr = 1;
                end
                else
                    nextState = INIT;
            end
            COUNT: begin
                cnten = 1;
                nextState = COUNT;
            end
        endcase;
    end
endmodule