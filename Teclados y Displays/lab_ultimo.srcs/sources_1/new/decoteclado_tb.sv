`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 08:14:30 PM
// Design Name: 
// Module Name: decoteclado_tb
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


module decoteclado_tb;
    reg clk;
    reg reset;
    reg [3:0] rows;
    wire [3:0] cols;
    wire [4:0] key;
    wire valid;
    
    DecoTeclado decoteclado1(clk,reset,clk,rows,cols,valid,key);
    
    always begin
        #0.1 clk = ~clk;
    end
    initial begin
        clk = 0;  
        reset = 1; 
        rows = 4'b1111;
        #0.2
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
        rows = 4'b1111;
        #1;
        $finish;
    end
    always @(posedge clk) begin
        $display("clk=%b,reset=%b,rows=%b,cols=%b,valid=%b,key=%b", clk,reset,clk,rows,cols,valid,key);
    end
endmodule
