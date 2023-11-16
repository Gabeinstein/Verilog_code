`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 05:53:34 PM
// Design Name: 
// Module Name: M12
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


module M12(
    input logic u,
    input logic reset,
    input logic clk,
    output logic y
    );
    logic state, next_state;
    always_comb 
        case(state)
            0: begin
                if (u) next_state = 1;
                else next_state = 0;
            end
            1: begin
                if (~u) next_state = 0;
                else next_state = 1;
            end
            default: next_state = 0;
        endcase 
        
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 0;    
    
    always_ff @(posedge clk)    // Para que la transicion de esta y sea en el siguiente ciclo de reloj
        case(state)
            0: y <= 0;
            1: begin
                if (u) y <= 0;
                else y <= 1;
            end
        endcase
endmodule
