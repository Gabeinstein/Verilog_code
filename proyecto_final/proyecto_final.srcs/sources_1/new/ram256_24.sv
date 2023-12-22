`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/15/2023 01:12:26 AM
// Design Name: 
// Module Name: ram256_24
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


module ram256_24(
    input logic clk,
    input logic reset,
    input logic we,
    input logic [7:0] addr_in,
    input logic [7:0] addr_out,
    input logic [23:0] data_in,
    output logic [23:0] data_out  
    );
    
    logic [23:0] ram [255:0];
    assign data_out = ram[addr_out];
    
    always_ff @(posedge clk, posedge reset) begin
        if (reset)begin
        end
    end
    
endmodule
