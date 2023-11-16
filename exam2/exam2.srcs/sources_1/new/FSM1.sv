`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 12:23:26 PM
// Design Name: 
// Module Name: FSM1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FSM1(
    input logic reset,
    input logic A,
    input logic clk,
    output logic Y,
    output logic [1:0] state
    );
    logic [1:0] next_state;
    
    CC1 c1(A, state, next_state);
    CC2 c2(state, Y);
    
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 2'b00;    
endmodule
module CC1(
    input logic A,
    input logic [1:0] state,
    output logic [1:0] next_state
);

    always_comb
        case(state)
            2'b00: begin
                if (A == 1) next_state = 2'b01;
                else next_state = 2'b00;
            end
            2'b01: begin
                if (A == 1) next_state = 2'b10;
                else next_state = 2'b11;
            end
            2'b10: begin
                if (A == 1) next_state = 2'b11;
                else next_state = 2'b10;
            end
            2'b11: begin
                if (A == 1) next_state = 2'b00;
                else next_state = 2'b10;
            end
            default: next_state = 2'b00;
        endcase
endmodule

module CC2 (
    input logic [1:0] state,
    output logic Y
);
    always_comb
        case(state)
            2'b00: Y = 1;
            2'b01: Y = 0;
            2'b10: Y = 1;
            2'b11: Y = 1;
        endcase
endmodule
