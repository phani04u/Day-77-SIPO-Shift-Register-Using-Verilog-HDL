`timescale 1ns / 1ps
module PIPO(
 input wire [3:0] D,
input wire       CLK,RST,
output wire [3:0] Q
);
D_FF  FFO(.D(D[0]),.CLK(CLK),.RST(RST),.Q(Q[0]));
D_FF  FF1(.D(D[1]),.CLK(CLK),.RST(RST),.Q(Q[1]));
D_FF  FF2(.D(D[2]),.CLK(CLK),.RST(RST),.Q(Q[2]));
D_FF  FF3(.D(D[3]),.CLK(CLK),.RST(RST),.Q(Q[3]));
endmodule 

