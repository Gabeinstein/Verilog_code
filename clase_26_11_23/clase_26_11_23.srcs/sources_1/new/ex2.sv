`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 01:41:21 PM
// Design Name: 
// Module Name: ex2
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


module ex2(
    input logic a,b,c,
    output logic y
    );
    logic n1,n2;
    uno uno_1(a,b,n1);
    uno uno_2(b,c,n2);
    dos dos_1(n1,n2,y);
endmodule
