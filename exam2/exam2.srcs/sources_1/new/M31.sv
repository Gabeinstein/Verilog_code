module M31(
    input logic n1,
    input logic n2,
    input logic clk,
    input logic reset,
    output logic y
);
    logic [1:0] state, next_state;
    always_comb 
        case(state)
            2'b00: begin
                if (n1) next_state = 2'b01;
                if (n2) next_state = 2'b11;
                if (n1 & n2) next_state = 2'b10;
            end
            2'b01: begin
                if (n2) next_state = 2'b10;
                else next_state = 2'b01;
            end
            2'b10: next_state = 2'b00;
            2'b11: begin
                if (~n1) next_state = 2'b11;
                else next_state = 2'b10;
            end
            default: next_state = 2'b00;
        endcase 
        
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 2'b00;    
    
    always_comb 
        case(state)
            2'b00: y = 0;
            2'b01: y = 0;
            2'b10: y = 1;
            2'b11: y = 0;
        endcase
endmodule 
