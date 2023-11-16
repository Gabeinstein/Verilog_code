`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gabriel Oña
// 
// Create Date: 11/06/2023 11:01:35 AM
// Design Name: 
// Module Name: controller
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Controller
// if controller 00 -> left 00 and right 00
// if controller 01 -> left state and right 00
// if controller 10 -> left 00 and right state
// if controller 11 -> left state and right state
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module controller(
    input logic [1:0] control,
    input logic [1:0] state,
    output logic [1:0] left,
    output logic [1:0] right
    );
    
    typedef enum logic [1:0] {S0, S1, S2, S3} statetype;
  
    always_comb begin
        case(control)
            S0: begin
                left <= 2'b00;
                right <= 2'b00;
            end 
            S1: begin
                left <= state;
                right <= 2'b00;
            end
            S2: begin
                left <= 2'b00;
                right <= state;
            end
            S3: begin
                left <= state;
                right <= state;
            end 
            default: begin
                left <= 2'b00;
                right <= 2'b00;
            end 
        endcase
    end
endmodule
