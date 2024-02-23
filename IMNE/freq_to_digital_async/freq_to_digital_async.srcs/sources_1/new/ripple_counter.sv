`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2024 11:28:38 PM
// Design Name: 
// Module Name: ripple_counter
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


module ripple_counter#(parameter N=8)(
    input logic clk,
    input logic reset,
    output logic [N-1:0] count
    );
    logic not_q_d [N-1:0];
    
    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : counter_gen
            d_flip_flop dff_instance (
                .clk((i == 0) ? clk:not_q_d[i-1]),
                .reset(reset),
                .D(not_q_d[i]),
                .Q(count[i]),
                .not_Q(not_q_d[i])
            );
        end
    endgenerate
endmodule
