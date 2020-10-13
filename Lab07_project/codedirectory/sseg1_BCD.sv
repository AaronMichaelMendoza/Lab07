`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2020 11:00:02 PM
// Design Name: 
// Module Name: sseg1_BCD
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sseg1_BCD(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [1:0] seg_un,
    output dp,
    output[6:0] sseg,
    output seg_L,
    output seg_R
    );
    wire[3:0] num;
    
mux2_4b mux0(
    .in0(A),
    .in1(B),
    .sel(sel),
    .out(num)
    );
    
sseg_decoder sseg0(
    .num(num),
    .sseg(sseg)
    );
    
assign seg_L=~sel;
assign seg_R=sel;
assign seg_un[1:0] = 2'b11;
assign dp = 1;

endmodule
