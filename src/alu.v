module alu (
    input  [3:0] a, b,        // operands
    input  [2:0] op,          // operation select
    output reg [3:0] result,  // result
    output reg carry_out      // carry/borrow
);

always @(*) begin
    carry_out = 0;
    case(op)
        3'b000: {carry_out, result} = a + b;   // ADD
        3'b001: {carry_out, result} = a - b;   // SUB
        3'b010: result = a & b;                // AND
        3'b011: result = a | b;                // OR
        3'b100: result = a ^ b;                // XOR
        3'b101: result = ~a;                   // NOT A
        3'b110: result = a << 1;               // Shift left
        3'b111: result = a >> 1;               // Shift right
        default: result = 4'b0000;
    endcase
end

endmodule