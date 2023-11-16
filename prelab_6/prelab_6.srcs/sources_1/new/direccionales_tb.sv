`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 09:08:55 AM
// Design Name: 
// Module Name: direccionales_tb
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


module direccionales_tb;
    reg clk;
    reg reset;
    reg [1:0] dir;
    wire [2:0] izq;
    wire [2:0] der;
        
    direccionales DUT(clk,dir,izq,der,reset);
    
    always begin
        #0.5 clk = ~clk;
    end
    
    initial begin
        clk = 0;    
        reset = 1;
        dir = 2'b00;
        #1.5
        reset = 0;    
        dir = 2'b00;
        #5;

        dir = 2'b01;
        #5;

        dir = 2'b10;
        #5;
        
        dir = 2'b11;
        #5;
    $finish;
  end
  
  // Monitor and display signals
  always @(posedge clk) begin
    $display("clk=%b, dir=%b, izq=%b, der=%b", clk, dir, izq, der);
  end
  
endmodule
