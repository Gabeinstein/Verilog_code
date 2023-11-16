`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 01:23:35 PM
// Design Name: 
// Module Name: uno
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


module uno(
    input logic a1,
    input logic a2,
    output logic y1
    );
    
    assign y1 = ~a1|a2;
endmodule
