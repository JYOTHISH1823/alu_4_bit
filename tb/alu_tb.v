`timescale 1ns/1ps
module alu_tb;

reg [3:0] a, b;
reg [2:0] op;
wire [3:0] result;
wire carry_out;

// Instantiate ALU
alu uut (
    .a(a),
    .b(b),
    .op(op),
    .result(result),
    .carry_out(carry_out)
);

initial begin
    // Dump waveforms
    $dumpfile("sim/alu.vcd");
    $dumpvars(0, alu_tb);

    // Test ADD
    a = 4'b0101; b = 4'b0011; op = 3'b000; #10; // 5 + 3 = 8
    $display("Time=%0t | ADD  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test SUB
    a = 4'b1000; b = 4'b0100; op = 3'b001; #10; // 8 - 4 = 4
    $display("Time=%0t | SUB  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test AND
    a = 4'b1100; b = 4'b1010; op = 3'b010; #10;
    $display("Time=%0t | AND  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test OR
    a = 4'b1100; b = 4'b1010; op = 3'b011; #10;
    $display("Time=%0t | OR   | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test XOR
    a = 4'b1100; b = 4'b1010; op = 3'b100; #10;
    $display("Time=%0t | XOR  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test NOT
    a = 4'b1100; op = 3'b101; #10;
    $display("Time=%0t | NOT  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test Shift Left
    a = 4'b0011; op = 3'b110; #10;
    $display("Time=%0t | SHL  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    // Test Shift Right
    a = 4'b1000; op = 3'b111; #10;
    $display("Time=%0t | SHR  | a=%b b=%b op=%b => result=%b carry=%b",
             $time, a, b, op, result, carry_out);

    $finish;
end

endmodule