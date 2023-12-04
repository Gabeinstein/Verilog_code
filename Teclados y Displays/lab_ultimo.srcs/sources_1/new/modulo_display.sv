`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2023 01:39:49 PM
// Design Name: 
// Module Name: modulo_display
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


module modulo_display(
    input logic clk,
    input logic reset,
    (* mark_debug = "true" *)input logic [3:0] rows,
    (* mark_debug = "true" *)output logic [3:0] cols,
    (* mark_debug = "true" *)output logic [2:0] B,
    (* mark_debug = "true" *)output logic [6:0] signal7
    );
    (* mark_debug = "true" *)logic enable,valid,str;
    (* mark_debug = "true" *)logic [4:0] key,rd;
    (* mark_debug = "true" *)logic [1:0] D_out, D_in;
    assign enable = clk;
    //strobe str1(clk,reset,enable);
    DecoTeclado decoteclado1(clk,reset,enable,rows,cols,valid,key);
    controlador controller1(clk,reset,enable,valid,B,D_out,D_in,str);
    memoria mem1(clk,reset,str,D_in,D_out,key,rd);
    DecoDisplay decodisp1(rd,signal7);
    
endmodule
