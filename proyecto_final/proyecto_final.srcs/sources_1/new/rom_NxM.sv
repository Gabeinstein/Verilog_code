`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/13/2023 11:42:57 PM
// Design Name: 
// Module Name: rom_NxM
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


module rom_NxM #(parameter N = 1024, M = 24)(
    input logic [log2(N)-1:0] address,
    output logic [M-1:0] d_out
    );
    logic [M-1:0] rom [N-1:0];
    initial begin
        $readmemh("rgb_rom.mem", rom);
    end
    assign d_out = rom[address];
    // log2 constant function
    function integer log2(input integer n);
        integer i;
        begin
            log2 = 1;
            for (i = 0; 2**i < n; i = i + 1)
                log2 = i + 1;
        end
   endfunction
endmodule
