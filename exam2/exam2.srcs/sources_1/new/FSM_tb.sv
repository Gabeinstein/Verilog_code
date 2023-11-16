`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 12:59:47 PM
// Design Name: 
// Module Name: FSM_tb
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


module FSM_tb;
    reg clk;
    reg reset;
    reg A;
    wire [1:0] state;
    wire Y;
        
    FSM1 DUT(reset, A, clk, Y, state);
    
    always begin
        #0.5 clk = ~clk;
    end
    
    initial begin
        clk = 0;    
        reset = 1;
        A = 1;
        #0.51
        reset = 0;
        #1.5
        A = 0;
        #3
        A = 1;
        #2.5
    $finish;
  end
  
  // Monitor and display signals
  always @(posedge clk) begin
    $display("clk=%b, reset=%b, A=%b, state=%b, Y=%b", clk, reset, A, state, Y);
  end
endmodule
