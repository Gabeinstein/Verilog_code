`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2023 03:30:46 PM
// Design Name: 
// Module Name: fsm
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


module fsm(
    input logic clk,
    (* mark_debug = "true" *)input logic reset,
    input logic sw0,
    output logic [3:0] led
    );
    
/* Define un nuevo tipo denominado statetype
que toma valores S0,S1,S2 y crea las variables state
y nexstate dentro de este tipo.
*/
typedef enum logic [1:0] {S0, S1, S2, S3} statetype;    
(* mark_debug = "true" *)statetype [1:0] state, nextstate;

// Registro
always_ff @(posedge clk)
if(reset) state <= S0;
else state <= nextstate;

//L�gica del siguiente estado
always_comb
    case(state)
        S0: if(sw0) nextstate = S1;
            else nextstate = S3;
        S1: if(sw0) nextstate = S2;
            else nextstate = S0;
        S2: if(sw0) nextstate = S3;
            else nextstate = S1;
        S3: if(sw0) nextstate = S0;
            else nextstate = S2;
        default: nextstate = S0;
    endcase

//logica de salida
always_comb
    case(state)
        S0: if(sw0) led[3:0] = 4'b0001;
            else led[3:0] = 4'b1000;
        S1: if(sw0) led[3:0] = 4'b0010;
            else led[3:0] = 4'b0001;
        S2: if(sw0) led[3:0]= 4'b0100;
            else led[3:0] = 4'b0010;
        S3: if(sw0) led[3:0] = 4'b1000;
            else led[3:0] = 4'b0100;
        default: led[3:0] = 4'b0000;
    endcase
endmodule

//divisor mod 25
module div(input logic clk, reset,
           output logic clk1);
reg [24:0] count;
always_ff @(posedge clk)
    count <= count+1;
assign clk1 = count[24];
endmodule

module main(
    input logic clk,
    input logic reset,
    input logic sw0,
    output logic [3:0] led);
logic divclk;
//Instanciamiento modulo div
div div1(clk,reset,divclk);
//Instanciamiento modulo fsm
fsm fsm1(divclk,reset,sw0,led);
endmodule
