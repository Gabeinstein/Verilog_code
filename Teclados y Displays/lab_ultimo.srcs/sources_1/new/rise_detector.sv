`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 05:04:30 PM
// Design Name: 
// Module Name: rise_detector
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


module rise_detector(
    input logic clk,
    input logic reset,
    input logic enable,
    input logic valid,
    output logic hey
    );
    logic [1:0] state, next_state;
    CC1_detector cc1(state,valid,next_state);
    CC2_detector cc2(state, hey);
    
    always_ff @(posedge clk)
        if (reset) begin
            state = 0;
        end
        else if (enable)begin
            state <= next_state;
        end
endmodule 
module CC1_detector(
    input logic [1:0]state,
    input logic valid,
    output logic [1:0]next_state
    );
    always_comb begin
        case(state)
            2'b00: if(valid)next_state = 2'b01; 
                  else next_state = 2'b00;
            2'b01: next_state = 2'b10;
            2'b10: if(valid)next_state = 2'b10; 
                  else next_state = 2'b00;
            default: next_state = 2'b00;
        endcase
    end
endmodule
module CC2_detector(
    input logic [1:0]state,
    output logic hey
    );
    always_comb begin
        case(state)
            2'b00: hey = 0;
            2'b01: hey = 1;
            2'b10: hey = 0;
            default: hey = 0;
        endcase
    end
endmodule