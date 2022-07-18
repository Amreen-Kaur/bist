`include "bist.v"
`timescale 1ns / 1ps


module bist_tb;
reg clk=0;
reg [3:0] sw;
wire [3:0] led;

bist b1(clk,sw,led);

always #2 clk =~ clk;

initial
 begin 
$dumpfile("bist.vcd");
$dumpvars(0,bist_tb);

sw = 0;
#4000
sw = 4'b1011;
#500
$finish;
end
endmodule
