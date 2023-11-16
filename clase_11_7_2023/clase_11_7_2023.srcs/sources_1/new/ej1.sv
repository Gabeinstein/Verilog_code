`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 01:12:22 PM
// Design Name: 
// Module Name: ej1
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


module ej1(
/*
always_comb@()  -> logica combinacional
always_ff@()    -> Flip Flop
always_latch@() -> Latch
*/
    input logic a,b,
    output logic y1,y2,y3,y4,y5
    );
    always_comb@(*)
        begin
            y1 = a&b;
            y2 = a|b;
            y3 = a^b;
            y4 = ~(a|b);
            y5 = ~(a&b);
        end
endmodule

module display_7(
    input logic [7:0] a,
    output logic [6:0] seg
/*Display 7 segmentos.
Dos tipos: anodo comun o catodo comun 
En serie diodos abcdefg
BCD a 7 segmentos:
binary coded decimal
0 - 9  -> 0000  1001
Tiene logica inversa 
2 = 0010010*/
);
always_comb 
    case(a)
        0:seg =  7'b0000001;
        1:seg = 7'b1001111;
        2: seg = 7'b0010010;
        3: seg = 7'b0000110;
        4: seg = 7'b1001100;
        5: seg = 7'b0100100;
        6: seg = 7'b0100000;
    default: seg = 7'b1111111;
    endcase 
endmodule
/*
decoder con prioridad
casez(a)
4'b0001: y=4'b0001
4'b001?: y=4'b0001*/

module flop(
    input logic clk,
    input logic reset,
    input logic enable,
    input logic [3:0] d,
    output logic [3:0] q);
    
    
    always_ff @(posedge clk, posedge reset)
        if (reset)
            q <= 0;
        else if (enable)
            q <= d;
endmodule 

module fsm1(
    input logic clk,
    input logic reset,
    input logic u,
    output logic y
);
typedef enum logic [1:0] {S0,S1,S2} statetype;
statetype state, next_state;

always_comb
    case (state)
    S0: if(u) next_state = S1;
        else next_state = S0;
    S1: if(u) next_state = S2;
        else next_state = S1;
    S2: next_state = S0;
    
    default: next_state = S0;
    endcase
    
    always_ff @(posedge clk)
        if (reset) state <= S0;
        else state <= next_state;
endmodule

/*
Circuitos combinacionalez usa = Asignacion bloqueante
Circuitos sincrónicos usa <= Asignacion no bloqueante*/