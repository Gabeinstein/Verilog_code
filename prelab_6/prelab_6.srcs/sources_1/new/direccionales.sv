`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2023 11:01:35 AM
// Design Name: 
// Module Name: direccionales
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


module direccionales(
    input logic clk,
    input logic [1:0] dir,
    output logic [2:0] izq,
    output logic [2:0] der,
    input logic reset
    );
    
    //logic divclk;
    
    logic [1:0] node1;
    logic [1:0] node2;
    logic [1:0] node3;
    
    
    div div1(clk,reset,divclk);
    
    counter counter1(divclk,node1,reset);
    controller cotroller1(dir,node1,node2,node3);
    decoder decoder1(node2,izq);
    decoder decoder2(node3,der);
endmodule