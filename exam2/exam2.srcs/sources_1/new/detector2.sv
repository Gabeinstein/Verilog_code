`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 04:34:24 PM
// Design Name: 
// Module Name: detector1
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


module detector2;
    reg clk;
    reg reset;
    reg a;
    reg b;
    wire n1;
    wire n2;
    wire y;
  
    M12 m1(a,reset,clk,n1);
    M22 m2(b,reset,clk,n2);
    M32 m3(n1,n2,reset,clk,y);
    
    always begin
        #0.1 clk = ~clk;
    end
    
    initial begin
        clk = 0;    
        reset = 1;
        a = 0;
        b = 0;
        #0.1
        reset = 0;
        #0.1
        a = 1;
        b = 1;
        #0.2
        a = 0;
        b = 1;
        #0.2
        a = 0;
        b = 0;
        #0.2
        a = 1;
        #0.2
        a = 0;
        b = 1;
        #0.2
        a = 0;
        b = 1;
        #0.2
        b = 0;
        #1
    $finish;
  end
  
  // Monitor and display signals
  always @(posedge clk) begin
    $display("clk=%b, reset=%b, a=%b, b=%b, y=%b", clk, reset, a, b,y);
  end
endmodule
