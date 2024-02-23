`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/17/2024 10:57:27 AM
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


module top #(parameter ref_N = 8,ptat_N = 12)(
    input logic clear,
    input logic FPTAT,
    input logic FREF,
    output logic done,
    output logic [ptat_N-1:0] data
    );
    logic [ref_N-1:0] ref_data;
    ripple_counter #(ref_N) REF_COUNT (
        .clk(~done&FREF),
        .reset(~clear),
        .count(ref_data)
        );
    assign ref_data[ref_N-1] = done;
    ripple_counter #(ptat_N) PTAT_COUNT (
        .clk(~done&FPTAT),
        .reset(~clear),
        .count(data)
        );
endmodule
