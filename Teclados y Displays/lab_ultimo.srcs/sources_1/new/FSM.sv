`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 09:33:00 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input logic clk,
    input logic reset,
    input logic enable,
    input logic [3:0] rows,
    output logic [3:0] cols,
    output logic valid
    );
    logic [3:0] state, next_state;
    CC1 circuit1(rows,state,next_state);
    CC2 circuit2(state,cols,valid);
        
    always_ff @(posedge clk)
        if (reset)begin
            state <= 4'd0;
        end
        else if(enable)
            state <= next_state;
endmodule

module CC1(
    input logic [3:0] rows,
    input logic [3:0] state,
    output logic [3:0] next_state
    );
    always_comb 
        case(state)
            4'd0: begin
                if (&rows) next_state = 4'd0;
                else next_state = 4'd1;
            end
            4'd1: begin
                if (&rows) next_state = 4'd3;
                else next_state = 4'd2;
            end
            4'd2: begin
                if (&rows) next_state = 4'd0;
                else next_state = 4'd2;
            end
            4'd3: begin
                if (&rows) next_state = 4'd5;
                else next_state = 4'd4;
            end
            4'd4: begin
                if (&rows) next_state = 4'd0;
                else next_state = 4'd4;
            end
            4'd5: begin
                if (&rows) next_state = 4'd7;
                else next_state = 4'd6;
            end
            4'd6: begin
                if (&rows) next_state = 4'd0;
                else next_state = 4'd6;
            end
            4'd7: begin
                if (&rows) next_state = 4'd0;
                else next_state = 4'd8;
            end
            4'd8: begin
                if (&rows) next_state = 4'd0;
                else next_state = 4'd8;
            end
            default: next_state = 4'd0;
        endcase
endmodule
module CC2(
    input logic [3:0] state,
    output logic [3:0] cols,
    output logic valid
);
    always_comb begin
        case(state)
            4'd0:begin
                cols = 4'h0;  
                valid = 0;
            end
            4'd1:begin
                cols = 4'hE;  
                valid = 0;
            end
            4'd2:begin
                cols = 4'hE;  
                valid = 1;
            end
            4'd3:begin
                cols = 4'hD;  
                valid = 0;
            end
            4'd4:begin
                cols = 4'hD;  
                valid = 1;
            end
            4'd5:begin
                cols = 4'hB;  
                valid = 0;
            end
            4'd6:begin
                cols = 4'hB;  
                valid = 1;
            end
            4'd7:begin
                cols = 4'h7;  
                valid = 0;
            end
            4'd8:begin
                cols = 4'h7;  
                valid = 1;
            end
            default: begin
               cols = 4'h0;
               valid = 0; 
            end
        endcase
    end
endmodule