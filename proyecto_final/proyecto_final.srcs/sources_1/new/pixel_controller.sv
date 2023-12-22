`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/14/2023 04:16:41 PM
// Design Name: 
// Module Name: pixel_controller
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


module pixel_controller #(parameter bits_per_pixel = 24)(
    input logic clk,
    input logic reset,
    input logic next_px_en,
    output logic next_bit_en,
    output logic px_done 
    );
    
    typedef enum logic [1:0] {
        reset_state,
        pixel_send_state,
        pixel_wait_state
    }state_type;
    
    parameter px_wait_time = 98; 
    
    state_type state, next_state;
    logic [7:0] px_wait_counter;
    logic [5:0] current_bit_num; 
    
    always_ff @(posedge clk, posedge reset)begin
        if(reset) begin
            state <= reset_state;
        end
        else begin
            state <= next_state;
        end
    end
    
    always_comb begin
        case(state)
            reset_state: begin
                if(next_px_en)begin
                    next_state = pixel_send_state;
                end
                else begin
                    next_state = reset_state;
                end
            end
            pixel_send_state:begin
                if(current_bit_num < bits_per_pixel)begin
                    next_state = pixel_wait_state;
                end
                else begin
                    next_state = reset_state;
                end
            end
            pixel_wait_state: begin
                if(px_wait_counter < px_wait_time) begin
                    next_state = pixel_wait_state;
                end
                else begin
                    next_state = pixel_send_state;
                end
            end
            default: begin
                next_state = reset_state;
            end
        endcase
    end
    always_ff @(posedge clk) begin
        next_bit_en <= 1'b0;
        px_done <= 1'b0;
        if (state == reset_state) begin
            px_wait_counter <= 1'b0;
            current_bit_num <= 1'b0;
        end 
        else begin
            if ((state == pixel_send_state) && (next_state == pixel_wait_state)) begin
                next_bit_en <= 1'b1;
                px_wait_counter <= 1'b0;
            end else if ((state == pixel_wait_state) && (next_state == pixel_send_state)) begin
                current_bit_num <= current_bit_num + 1;
            end else if ((state == pixel_send_state) && (next_state == reset_state)) begin
                px_done <= 1'b1;
            end else if (state == pixel_wait_state) begin
                px_wait_counter <= px_wait_counter + 1;
            end
        end
    end
endmodule
