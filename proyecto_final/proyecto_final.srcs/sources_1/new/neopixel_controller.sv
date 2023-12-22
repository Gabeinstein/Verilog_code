`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 06:12:21 PM
// Design Name: 
// Module Name: neopixel_controller
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


module neopixel_controller #(
    parameter px_count_width = 8,
    parameter px_num = 256,
    parameter bits_per_pixel = 24,
    parameter one_high_time = 88,
    parameter zero_high_time = 44
    )(
    input logic clk,
    input logic reset,
    input logic start,
    input logic [23:0] pixel,
    output logic [7:0] next_px_num,
    output logic signal_out
    );
 
    logic px_done_inter;
    logic next_px_en_inter;
    logic next_bit_en_inter;
    
    strip_controller #(px_count_width, px_num) strip_control_unit (
        .clk(clk),
        .start(start),
        .reset(reset),
        .px_done(px_done_inter),
        .next_px_en(next_px_en_inter),
        .next_px_num(next_px_num)
    );
    
    pixel_controller #(bits_per_pixel) pixel_control_unit (
        .clk(clk),
        .reset(reset),
        .next_px_en(next_px_en_inter),
        .next_bit_en(next_bit_en_inter),
        .px_done(px_done_inter)
    );
    
    signal_controller #(bits_per_pixel, one_high_time, zero_high_time) NZR_protocol_controller (
        .clk(clk),
        .reset(reset),
        .next_bit_en(next_bit_en_inter),
        .pixel(pixel),
        .signal_out(signal_out)
    );
    
endmodule
