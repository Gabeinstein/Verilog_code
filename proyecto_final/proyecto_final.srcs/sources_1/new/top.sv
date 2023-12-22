`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2023 11:53:53 PM
// Design Name: 
// Module Name: top
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


module top (
    input logic clk,
    input logic reset,
    input logic [9:0] adc,
    output logic data_out
    );
    //(*mark_debug =  "true"*) 
    logic [23:0] d_out;
    logic enable_reset, enable_start;
    
    rom_NxM  #(1024,24) rom_1024x24(
        adc,
        d_out);
        
    neopixel_controller #(8,257,24,88,44) neopixel_unit( //256
        .clk(clk),
        .reset(enable_reset),
        .start(enable_start),
        .pixel(d_out),
        .signal_out(data_out)
    );
    
    refresh_controller controller_unit(
        .clk(clk),
        .reset(reset),
        .enable_start(enable_start),
        .enable_reset(enable_reset)
    );
        
endmodule

module top_tb;
    logic clk;
    logic reset;
    logic start;
    logic [9:0] adc;
    logic signal_out;
    
    top top_unit (
        clk,
        reset,
        start,
        adc,
        signal_out
    );
    always begin
        #0.1 clk = ~clk;
    end
    
    initial begin
        clk = 0;
        adc = 0;
        reset = 1;
        #0.2
        reset = 0;
        start = 1;
        adc = 560;
        #10000;
        adc = 1023;
        #5;
        $finish;
    end
    
    always @(posedge clk) begin
        $display("clk=%b, reset=%b, adc=%b, signal_out=%b", clk, reset, adc, signal_out);
    end
endmodule 