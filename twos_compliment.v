`timescale 1ns / 1ps

module twos_compliment(
    input  [7:0] A,
    output [7:0] Y
);
    wire [7:0] inv;
    wire [7:0] c;
    assign inv = ~A;

    full_adder b0(.A(inv[0]), .B(1'b1), .Cin(1'b0), .Y(Y[0]), .Cout(c[0]));
    full_adder b1(.A(inv[1]), .B(1'b0), .Cin(c[0]), .Y(Y[1]), .Cout(c[1]));
    full_adder b2(.A(inv[2]), .B(1'b0), .Cin(c[1]), .Y(Y[2]), .Cout(c[2]));
    full_adder b3(.A(inv[3]), .B(1'b0), .Cin(c[2]), .Y(Y[3]), .Cout(c[3]));
    full_adder b4(.A(inv[4]), .B(1'b0), .Cin(c[3]), .Y(Y[4]), .Cout(c[4]));
    full_adder b5(.A(inv[5]), .B(1'b0), .Cin(c[4]), .Y(Y[5]), .Cout(c[5]));
    full_adder b6(.A(inv[6]), .B(1'b0), .Cin(c[5]), .Y(Y[6]), .Cout(c[6]));
    full_adder b7(.A(inv[7]), .B(1'b0), .Cin(c[6]), .Y(Y[7]), .Cout(c[7]));
endmodule
