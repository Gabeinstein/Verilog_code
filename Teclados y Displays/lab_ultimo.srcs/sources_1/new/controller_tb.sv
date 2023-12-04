`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/01/2023 11:22:38 AM
// Design Name: 
// Module Name: controller_tb
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


module controller_tb;
    reg clk;
    reg reset;
    reg enable;
    reg valid;
    wire [2:0]B;
    wire [1:0]add_out;
    wire [1:0]add_in;
    wire we;

    //controlador controller1(clk,reset,clk,valid,B,add_out,we);
    controlador DUT(clk,reset,clk,valid,B,add_out,add_in,we);
    always begin
        #0.1 clk = ~clk;
    end
    initial begin
        clk = 0;  
        reset = 1; 
        valid = 0;
        #0.2
        reset = 0; 
        #0.2
        #1;
        #0.2;
        valid = 1;
        #1;
        valid = 0;
        #1;
        valid = 1;
        #1;
        valid = 0;
        #1;
        valid = 1;
        #1
        $finish;
    end
    always @(posedge clk) begin
        $display("clk=%b, reset=%b,enable=%b, valid=%b,B=%b,add_out=%b,add_in=%b,we=%b", clk,reset,clk,valid,B,add_out,add_in,we);
    end
endmodule
