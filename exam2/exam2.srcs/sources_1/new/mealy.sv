module mealy(
    input logic clk,
    input logic reset,
    input logic a,
    input logic b,
    output logic y
 ); 
 wire n1;
 wire n2;
    M12 m1(a,reset,clk,n1);
    M22 m2(b,reset,clk,n2);
    M32 m3(n1,n2,reset,clk,y);
endmodule