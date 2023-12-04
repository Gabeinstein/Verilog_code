`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:12:56 PM
// Design Name: 
// Module Name: Decokey
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


module Decokey(
    input logic [3:0] cols,
    input logic [3:0] rows,
    input logic valid,
    output logic [4:0] key
    );
    logic [4:0] nkey;
    always_comb 
        case({cols,rows})
            8'hEE: nkey = 5'h01;
            8'hDE: nkey = 5'h02;
            8'hBE: nkey = 5'h03;
            8'h7E: nkey = 5'h0A;
            8'hED: nkey = 5'h04;
            8'hDD: nkey = 5'h05;
            8'hBD: nkey = 5'h06;
            8'h7D: nkey = 5'h0B;
            8'hEB: nkey = 5'h07;
            8'hDB: nkey = 5'h08;
            8'hBB: nkey = 5'h09;
            8'h7B: nkey = 5'h0C;
            8'hE7: nkey = 5'h00;
            8'hD7: nkey = 5'h0F;
            8'hB7: nkey = 5'h0E;
            8'h77: nkey = 5'h0D;
            default nkey = 5'h10;
        endcase 
    assign key = valid? nkey:5'h10;
endmodule
