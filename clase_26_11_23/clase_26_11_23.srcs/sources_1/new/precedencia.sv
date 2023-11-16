`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2023 01:53:39 PM
// Design Name: 
// Module Name: precedencia
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


module precedencia(
    /*
    Prioridad
    ~ NOT 
    * / %   multiplicacion, division y modulo
    + -     suma y resta
    << >>   Desplazamiento lógico   a = 1001    a << 2 = 0100   no toma en cuenta el signo
    <<< >>> Desplazamiento aritmetico   llena el signo con el bit mas significativo para que se mantenga el complemento a 2
    <, <=, >, >=    comparacion
    == !=   comparacion 2
    == Sintetizable
    === no sintetizable testbench 0,1,Z,X
    & ~&    and
    ^ ~^    xor
    | ~|    or
    ?:      ternario 
    
    */
    );
endmodule
