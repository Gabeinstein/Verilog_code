`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:01:24 PM
// Design Name: 
// Module Name: DecoDisplay
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


module DecoDisplay(
    input logic [4:0] ABCD,
    output logic [6:0] segment
    );
    
    always_comb begin
        case(ABCD)
            5'h00: segment = 7'b1000000;
            5'h01: segment = 7'b1111001;
            5'h02: segment = 7'b0100100;
            5'h03: segment = 7'b0110000;
            5'h04: segment = 7'b0011001;
            5'h05: segment = 7'b0010010;
            5'h06: segment = 7'b0000010;
            5'h07: segment = 7'b1111000;
            5'h08: segment = 7'b0000000;
            5'h09: segment = 7'b0011000;
            5'h0A: segment = 7'b0001000;
            5'h0B: segment = 7'b0000011;
            5'h0C: segment = 7'b1000110;
            5'h0D: segment = 7'b0100001;
            5'h0E: segment = 7'b0000110;
            5'h0F: segment = 7'b0001110;
            5'h10: segment = 7'b1111111;
            default: segment = 7'b1111111;
        endcase
    end
endmodule

