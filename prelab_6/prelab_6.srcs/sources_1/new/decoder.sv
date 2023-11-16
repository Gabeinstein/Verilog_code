`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel Oña
// 
// Create Date: 11/06/2023 11:01:35 AM
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Decoder 00 -> 000, 01 -> 001, 10 -> 011, 11 -> 111
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder(
    input logic [1:0] in,
    output logic [2:0] out
    );
    
    typedef enum logic [1:0] {S0, S1, S2, S3} statetype;   
    
    always_comb 
        case(in)
            S0: begin
                out = 3'b000;
            end
            S1: begin
                out = 3'b001;
            end
            S2: begin
                out = 3'b011;
            end
            S3: begin
                out = 3'b111;
            end
        endcase
endmodule
