`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 05:39:23 PM
// Design Name: 
// Module Name: module_tb
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


module module_tb;
    reg clk;
    reg reset;
    reg [3:0] rows;
    wire [3:0] cols;
    wire [2:0] B;
    wire [6:0] signal7;

    //controlador controller1(clk,reset,clk,valid,B,add_out,we);
    modulo_display DUT(clk,reset,rows,cols,B,signal7);
    always begin
        #0.1 clk = ~clk;
    end
    initial begin
        clk = 0;  
        reset = 1; 
        rows = 4'b1111;
        #0.6
        reset = 0; 
        rows = 4'b1111;
        #0.2
        rows = 4'b1111;
        #1;
        rows = 4'b1110;
        #0.2;
        rows = 4'b1111;
        #0.2;
        rows = 4'b1110;
        #1;
        rows = 4'b1111;
        #1;
        rows = 4'b1011;
        #0.2;
        rows = 4'b1111;
        #0.6;
        rows = 4'b1011;
        #5;
        $finish;
    end
    always @(posedge clk) begin
        $display("clk=%b, reset=%b,enable=%b, rows=%b,cols=%b,B=%b,signal7=%b", clk,reset,clk,rows,cols,B,signal7);
    end
endmodule 