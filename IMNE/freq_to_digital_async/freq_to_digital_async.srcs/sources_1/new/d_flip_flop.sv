`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2024 10:08:25 PM
// Design Name: 
// Module Name: d_flip_flop
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


module d_flip_flop(
    input logic clk, reset,
    input logic D,
    output logic Q,
    output logic not_Q
    );
    
    always_ff @(posedge clk) begin
        if (reset) begin
            Q <= 1'b0;
        end
        else begin
            Q <= D;
        end
    end
    
    assign not_Q = ~Q;
    
endmodule


