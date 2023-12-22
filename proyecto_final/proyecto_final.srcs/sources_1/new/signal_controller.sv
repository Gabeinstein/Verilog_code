`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 09:05:29 AM
// Design Name: 
// Module Name: signal_controller
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


module signal_controller #(parameter bits_per_pixel = 24, one_high_time = 88, zero_high_time = 44)(
    input logic clk,
    input logic reset,
    input logic next_bit_en,
    input logic [23:0] pixel,
    output logic signal_out
    );
    
    logic [4:0] current_bit_position;
    logic [6:0] signal_high_timer;
    
    always_ff @(posedge clk, posedge reset)
        if (reset) begin
            signal_out <= 0;
            signal_high_timer <= 0;
            current_bit_position <= 0;
        end
        else begin 
            signal_out <= 0;
            if (signal_high_timer > 0 && next_bit_en == 0)begin
                signal_out <= 1;
                signal_high_timer <= signal_high_timer - 1;
            end
            else if (next_bit_en) begin
                if (pixel[current_bit_position] == 1)begin
                    signal_high_timer <= one_high_time;
                end
                else begin
                    signal_high_timer <= zero_high_time;
                end
                current_bit_position <= current_bit_position + 1;
                if (current_bit_position == bits_per_pixel - 1)begin
                    current_bit_position <= 0;
                end
            end
        end
endmodule
