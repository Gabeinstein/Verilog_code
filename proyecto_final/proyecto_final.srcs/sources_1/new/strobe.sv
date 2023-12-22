`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 06:53:38 PM
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
           
    logic[1:0] count, count2;
    
    assign count2 = count - 1;
    
    always_ff@(posedge clk)
    if(reset) count <= 2'h3;
    else if(count2 == 2'h0) count <= 2'h3;
    else count <= count2;

    always_comb
        if (count == 1)
            clk1 = 1'b1;
        else
            clk1 = 1'b0;
endmodule
