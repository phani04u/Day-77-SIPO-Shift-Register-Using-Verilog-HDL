`timescale 1ns / 1ps
module PIPO_TB;
reg [3:0] D;
reg       CLK,RST;
wire [3:0] Q;
PIPO  UUT(.D(D),.CLK(CLK),.RST(RST),.Q(Q));
initial begin 
  CLK = 1'b0;
forever #5 CLK = ~CLK;
end
integer i;
initial begin 
  RST = 1'b1;
  D = 4'b0000;
  #10;
  RST = 1'b0;
for(i = 0; i < 8; i = i+1) begin 
   D = i;
  #10;
end
 RST = 1'b1; #10;
  RST = 1'b0; #10;
$finish;
end
initial begin
    $monitor("Time=%0t | CLK=%b | RST=%b | D=%b | Q=%b",
             $time,CLK,RST,D,Q);
end
endmodule


   