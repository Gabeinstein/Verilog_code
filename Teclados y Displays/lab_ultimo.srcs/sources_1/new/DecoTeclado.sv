`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:01:24 PM
// Design Name: 
// Module Name: DecoTeclado
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


module DecoTeclado(
    input logic clk,
    input logic reset,
    input logic enable,
    input logic [3:0] rows,
    output logic [3:0] cols,
    output logic valid,
    output logic [4:0] key
    );
    logic [3:0] rows_sync;
    logic [4:0] nkey;
    
    sync sync1(clk,rows,rows_sync);
    FSM fsm1(clk,reset,enable,rows_sync,cols,valid);
    Decokey deco1(cols,rows_sync,valid,nkey);
    
    assign key = nkey;
endmodule