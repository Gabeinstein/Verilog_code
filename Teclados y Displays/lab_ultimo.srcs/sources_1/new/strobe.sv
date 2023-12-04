`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 03:33:38 PM
// Design Name: 
// Module Name: strobe
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

module strobe(
    input logic clk,
    input logic reset,
    output logic clk1);
           
    logic[18:0] count, count2;
    
    assign count2 = count - 1;
    
    always_ff@(posedge clk)
    if(reset) count <= 19'h7a120;
    else if(count2 == 19'h0) count <= 19'h7a120;
    else count <= count2;

    always_comb
        if (count == 1)
            clk1 = 1'b1;
        else
            clk1 = 1'b0;
endmodule
