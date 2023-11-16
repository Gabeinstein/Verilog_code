`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Gabriel Oña
// 
// Create Date: 11/06/2023 11:01:35 AM
// Design Name: Contador de 2 bits.
// Module Name: counter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Se busca que el módulo realize un conteo ascendente de bits con el que se puede implementar
// el sistema de direccionales de un automovil.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module counter(
    input logic clk,
    output logic [1:0] count,
    input logic reset
    );
        
    always_ff @(posedge clk or posedge reset)
        if (reset)begin
            count <= 2'b00;
            end
        else if (clk)
            count <= count +1;
endmodule

module div(input logic clk,
           output logic clk1);
    reg [24:0] count;
    always_ff @(posedge clk)
        count <= count+1;
    assign clk1 = count[24];
endmodule
/*
module counter_tb;
    reg clk;
    reg reset;
    wire [1:0] count;
    
    counter DUT(clk,count,reset);
    
    always begin
        #1 clk = ~clk;
    end
    
    initial begin
        clk = 0;    
        reset = 1;
        #1.5
        reset = 0;  
        #0.5  
        #5
        reset = 1;
        #5
        reset = 0; 
        #5
        #5
    $finish;
  end
  
  // Monitor and display signals
  always @(posedge clk) begin
    $display("clk=%b, reset=%b, count=%b", clk, reset, count);
  end
  
endmodule
*/