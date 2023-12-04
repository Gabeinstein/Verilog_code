`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2023 07:01:24 PM
// Design Name: 
// Module Name: controlador
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


module controlador(
    input logic clk,
    input logic reset,
    input logic enable,
    input logic valid,
    output logic [2:0] B,
    output logic [1:0] add_out,
    output logic [1:0] add_in,
    output logic we
    );
    
    logic [1:0] state, next_state;
    logic [1:0] state1, next_state1;
    
    rise_detector detect1(clk,reset,enable,valid,we);
    CC1_barrido cc1_barrido(state, next_state);
    CC2_barrido cc2_barrido(state, B, add_out);
    
    CC1_write cc1_write(we,state1,next_state1);
    CC2_write cc2_write(state1,add_in);
    
    always_ff @(posedge clk)
        if (reset) begin
            state = 0;
            state1 = 0;
        end
        else if (enable)begin
            state <= next_state;
            state1 <= next_state1;
        end
endmodule

module CC1_write(
    input logic we,
    input logic [1:0] state,
    output logic [1:0] next_state
    );
    always_comb begin
        case(state)
            2'b00: if(we) next_state = 2'b01;
            else next_state = 2'b00;
            2'b01: if(we) next_state = 2'b10;
            else next_state = 2'b01;
            2'b10: if(we) next_state = 2'b00;
            else next_state = 2'b10;
            default: next_state = 2'b00;
        endcase 
    end
endmodule 

module CC2_write(
    input logic [1:0] state,
    output logic [1:0] add_write
    );
    always_comb begin
        case(state)
            2'b00: add_write = 2'b00;
            2'b01: add_write = 2'b01;
            2'b10: add_write = 2'b10;
            default: add_write = 2'b00;
        endcase 
    end
endmodule

module CC1_barrido(
    input logic [1:0] state,
    output logic [1:0] next_state
    );
    always_comb begin
        case(state)
            2'd0: next_state = 2'd1;
            2'd1: next_state = 2'd2;
            2'd2: next_state = 2'd0;
            default: next_state = 2'd0;
        endcase 
    end
endmodule 
module CC2_barrido(
    input logic [1:0] state,
    output logic [2:0] B,
    output logic [1:0] add_out
    );
    always_comb begin
        case(state)
            2'd0: begin
                B = 3'b110;
                add_out = 2'b00;
            end
            2'd1: begin
                B = 3'b101;
                add_out = 2'b01;
            end
            2'd2: begin
                B = 3'b011;
                add_out = 2'b10;
            end
            default: begin
                B = 3'b110;
                add_out = 2'b00;
            end
        endcase 
    end
endmodule 
