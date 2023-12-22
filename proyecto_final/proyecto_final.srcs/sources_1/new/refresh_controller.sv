`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/19/2023 04:38:11 PM
// Design Name: 
// Module Name: refresh_controller
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


module refresh_controller(
    input logic clk,
    input logic reset,
    output logic enable_reset,
    output logic enable_start
    );
    
    parameter refresh_rate = 1250000; //10 ms
    logic [20:0] counter;
    
    always_ff @(posedge clk)
        if (reset) begin
            counter <= 21'd0;
        end
        else counter <= counter + 1;
        
    always_comb 
        if (counter == refresh_rate/2) begin
            enable_reset = 1'b0;
            enable_start = 1'b1;
        end
        else if(counter == refresh_rate) begin
            enable_reset = 1'b1;
            enable_start = 1'b0;
        end
        else begin 
            enable_reset = 1'b0;
            enable_start = 1'b0;
        end
endmodule
