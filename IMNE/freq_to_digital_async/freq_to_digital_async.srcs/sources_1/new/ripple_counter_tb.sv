`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/13/2024 11:09:06 AM
// Design Name: 
// Module Name: ripple_counter_tb
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


module ripple_counter_tb;

    // Parameters
    parameter N = 8; // Number of bits in the counter
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Inputs
    logic clk = 0;
    logic reset = 1;

    // Outputs
    logic [N-1:0] count;

    // Instantiate the ripple_counter_async module
    ripple_counter #(N) dut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;

    // Initial stimulus
    initial begin
        // Release reset after some time
        #20 reset = 0;
        // Wait for simulation to finish
        #100;
        // End simulation
        $finish;
    end

    // Display count value
    always_ff @(posedge clk) begin
        $display("Count = %b", count);
    end

endmodule


