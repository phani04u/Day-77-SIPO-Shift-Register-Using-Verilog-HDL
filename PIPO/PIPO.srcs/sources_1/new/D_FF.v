`timescale 1ns / 1ps
module D_FF(
  input  wire D,
  input  wire CLK,
  input  wire RST,
  output reg Q
);
always @(posedge CLK ) begin 
   if (RST) 
      Q <= 1'b0;
   else 
      Q <= D; 
end
endmodule
