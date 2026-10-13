`timescale 1ns / 1ps

module ones_compliment(
    input  [3:0] A,
    input  [3:0] B,
    output [3:0] Y
);
    wire [3:0] APlusB;
    wire [3:0] c1;
    wire [3:0] c2;
    wire around;
    assign around = c1[3];

    full_adder s1_b0(.A(A[0]), .B(B[0]), .Cin(1'b0),  .Y(APlusB[0]), .Cout(c1[0]));
    full_adder s1_b1(.A(A[1]), .B(B[1]), .Cin(c1[0]), .Y(APlusB[1]), .Cout(c1[1]));
    full_adder s1_b2(.A(A[2]), .B(B[2]), .Cin(c1[1]), .Y(APlusB[2]), .Cout(c1[2]));
    full_adder s1_b3(.A(A[3]), .B(B[3]), .Cin(c1[2]), .Y(APlusB[3]), .Cout(c1[3]));

    full_adder s2_b0(.A(APlusB[0]), .B(1'b0), .Cin(around), .Y(Y[0]), .Cout(c2[0]));
    full_adder s2_b1(.A(APlusB[1]), .B(1'b0), .Cin(c2[0]),  .Y(Y[1]), .Cout(c2[1]));
    full_adder s2_b2(.A(APlusB[2]), .B(1'b0), .Cin(c2[1]),  .Y(Y[2]), .Cout(c2[2]));
    full_adder s2_b3(.A(APlusB[3]), .B(1'b0), .Cin(c2[2]),  .Y(Y[3]), .Cout(c2[3]));
endmodule
