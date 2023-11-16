module M22(
    input logic u,
    input logic reset,
    input logic clk,
    output logic y
    );
    logic state, next_state;
    always_comb 
        case(state)
            0: begin
                if (u) next_state = 1;
                else next_state = 0;
            end
            1: next_state = 0;
            default: next_state = 0;
        endcase 
        
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 0;    
    
    always_ff @(posedge clk)
        case(state)
            0: y <= 0;
            1: begin
                if (u) y <= 1;
                else y <= 0;
            end
        endcase
endmodule