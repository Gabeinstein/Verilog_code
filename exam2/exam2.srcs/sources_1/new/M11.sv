module M11(
    input logic a,
    input logic clk,
    input logic reset,
    output logic n1
);
    logic [1:0] state, next_state;
    always_comb 
        case(state)
            2'b00: begin
                if (a) next_state = 2'b01;
                else next_state = 2'b00;
            end
            2'b01: begin
                if (a) next_state = 2'b01;
                else next_state = 2'b10;
            end
            2'b10: begin
                if (a) next_state = 2'b01;
                else next_state = 2'b00;
            end
            default: next_state = 2'b00;
        endcase 
        
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 2'b00;    
    
    always_comb 
        case(state)
            2'b00: n1 = 0;
            2'b01: n1 = 0;
            2'b10: n1 = 1;
        endcase
endmodule 
