`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:01:24 PM
// Design Name: 
// Module Name: memoria
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


module memoria(
    input logic clk,
    input logic reset,
    input logic we,
    input logic [1:0] add_write,
    input logic [1:0] add_read,
    input logic [4:0] wr,
    output logic [4:0] rd
    );
    
    logic [4:0] ram [2:0];
    
    initial begin
        ram[0] = 5'h10;
        ram[1] = 5'h10;
        ram[2] = 5'h10;
    end
    
    assign rd = ram[add_read];
    
    always_ff @(posedge clk)
        if(reset)begin
            ram[0] = 5'h10;
            ram[1] = 5'h10;
            ram[2] = 5'h10; 
        end
        else if (we)ram[add_write] <= wr;
endmodule
