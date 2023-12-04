`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:07:50 PM
// Design Name: 
// Module Name: sync
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


module sync(
    input logic clk,
    input logic [3:0] rows,
    output logic [3:0] rows_sync
);
    logic [3:0] n1;
    
    always_ff @(posedge clk)begin
        n1 <= rows;
        rows_sync <= n1;  
    end
endmodule

