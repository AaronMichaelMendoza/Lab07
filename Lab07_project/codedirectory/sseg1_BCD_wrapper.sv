`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2020 11:02:01 PM
// Design Name: 
// Module Name: sseg1_BCD_wrapper
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


module sseg1_bcd_wrapper(
    input [15:0] sw,
    input clk,
    output [3:0] an,
    output [6:0] seg,
    output dp
    );
    
    wire[7:0] num;
    wire[3:0] ones_wire;
    wire[3:0] tens_wire;
    wire[3:0] hundreds_wire;
    wire[3:0] thousands_wire;
    
    mux2_4b muxA(
    .in0(num[7:4]),
    .in1(num[3:0]),
    .sel(sw[14]),
    .out(ones_wire)
    );
    
    mux2_4b muxB(
    .in0(num[7:4]),
    .in1(num[3:0]),
    .sel(sw[14]),
    .out(tens_wire)
    );
    
    eleven_bit_BCD myelevBCD(
        .B(sw[10:0]),
        .ones(ones_wire),
        .tens(tens_wire),
        .hundreds(hundreds_wire),
        .thousands(thousands_wire)
        );
    
    sseg1_BCD my_sseg1(
    .A(ones_wire),
    .B(tens_wire),
    .sel(sw[15]),
    .seg_un(an[3:2]),
    .dp(dp),
    .sseg(seg),
    .seg_L(an[1]),
    .seg_R(an[0])
    );
    
endmodule
