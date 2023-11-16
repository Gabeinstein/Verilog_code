module M21(
    input logic b,
    input logic clk,
    input logic reset,
    output logic n2
);
    logic [1:0] state, next_state;
    always_comb 
        case(state)
            2'b00: begin
                if (b) next_state = 2'b01;
                else next_state = 2'b00;
            end
            2'b01: begin
                if (b) next_state = 2'b10;
                else next_state = 2'b00;
            end
            2'b10: begin
                if (b) next_state = 2'b10;
                else next_state = 2'b00;
            end
            default: next_state = 2'b00;
        endcase 
        
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 2'b00;    
    
    always_comb 
        case(state)
            2'b00: n2 = 0;
            2'b01: n2 = 0;
            2'b10: n2 = 1;
        endcase
endmodule 
