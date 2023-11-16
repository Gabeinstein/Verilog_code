`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 01:46:58 PM
// Design Name: 
// Module Name: ex_5
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


module ex_5(    //MUX
    input logic s,
    input logic [3:0] d0,
    input logic [3:0] d1,
    output logic [3:0] y
    );
    
    assign y = s? d1:d0;
    //y = s1?(s0? d3:d2):(s0? d1:d0) Anidación 
endmodule
