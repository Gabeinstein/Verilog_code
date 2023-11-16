module M32(
    input logic n1,
    input logic n2,
    input logic reset,
    input logic clk,
    output logic y
    );
    logic [1:0] state, next_state, in;
    always_comb 
        case(state)
            2'b00: begin
                in[1] = n2;
                in[0] = n1;
                case(in)
                    2'b00: next_state = 2'b00;
                    2'b01: next_state = 2'b01;
                    2'b10: next_state = 2'b10;
                    2'b11: next_state = 2'b00;
                    default: next_state = 2'b00;
                endcase 
            end
            2'b01: begin
                if (~n2) next_state = 2'b01;
                else next_state = 2'b00;
            end
            2'b10: begin
                if (~n1) next_state = 2'b10;
                else next_state = 2'b00;
            end
            default: next_state = 2'b00;
        endcase 
        
    always_ff @(posedge clk)
        if (~reset) state <= next_state;
        else state <= 2'b00;    
    
    always_ff @(posedge clk) 
        case(state)
            2'b00: begin
                in[1] <= n2;
                in[0] <= n1;
                case(in)
                    2'b00: y <= 0;
                    2'b01: y <= 0;
                    2'b10: y <= 0;
                    2'b11: y <= 1;
                    default: y <= 0;
                endcase 
            end
            2'b01: begin
                if (~n2) y <= 0;
                else y <= 1;
            end
            2'b10: begin
                if (~n1) y <= 0;
                else y <= 1;
            end
            default: y <= 0;
        endcase 
endmodule