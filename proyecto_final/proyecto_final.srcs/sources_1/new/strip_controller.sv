`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 04:16:41 PM
// Design Name: 
// Module Name: strip_controller
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


module strip_controller #(parameter width = 8, px_num = 256)(
    input logic clk,
    input logic start,
    input logic reset,
    input logic px_done,
    output logic next_px_en,
    output logic [7:0] next_px_num
    );
    
    parameter latch_time = 12500;
    
    logic [3:0] state, next_state;
    logic [width-1:0] current_px;
    logic [13:0] latch_counter;

    always_ff @(posedge clk, posedge reset) begin
        if (reset) begin
            state <= 4'b0000;
        end else begin
            state <= next_state;
        end
    end

    always_comb begin
        case (state)
            4'b0000: if (start) begin
                next_state = 4'b0001;
            end else begin
                next_state = 4'b0000;
            end
            4'b0001: if (current_px < px_num) begin
                next_state = 4'b0010;
            end else begin
                next_state = 4'b0011;
            end
            4'b0010: if (px_done) begin
                next_state = 4'b0001;
            end else begin
                next_state = 4'b0010;
            end
            4'b0011: if (latch_counter == latch_time) begin
                next_state = 4'b0000;
            end else begin
                next_state = 4'b0011;
            end
            default: next_state = 4'b0000;
        endcase
    end

    always_ff @(posedge clk) begin
        if (state == 4'b0000) begin
            latch_counter <= 14'b0;
            current_px <= 8'h0;
            next_px_en <= 1'b0;
            next_px_num <= 8'h0;
        end else begin
            next_px_en <= 1'b0;
            if (state == 4'b0001 && next_state == 4'b0010) begin
                next_px_en <= 1'b1;
                next_px_num <= current_px;
            end else if (state == 4'b0010 && next_state == 4'b0001) begin
                current_px <= current_px + 1;
            end else if (state == 4'b0011) begin
                latch_counter <= latch_counter + 1;
            end
        end
    end

endmodule
