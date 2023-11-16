module moore(
    input logic clk,
    input logic reset,
    input logic a,
    input logic b,
    output logic y
 ); 
 wire n1;
 wire n2;
    M11 m1(a,clk,reset,n1);
    M21 m2(b,clk,reset,n2);
    M31 m3(n1,n2,clk,reset,y);
endmodule