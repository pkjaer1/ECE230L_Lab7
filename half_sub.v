`timescale 1ns / 1ps

module half_sub(
    input A, B,
    output Y, Borrow
);
    assign Y      = A ^ B;
    assign Borrow = ~A & B;
endmodule
