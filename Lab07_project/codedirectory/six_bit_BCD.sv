`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:25:19 PM
// Design Name: 
// Module Name: six_bit_BCD
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


module six_bit_BCD(
    input [5:0] B,
    output [3:0] tens,
    output [3:0] ones
    );
    
    wire[3:0] c1_modnum;
    wire[3:0] c2_modnum;
    wire[3:0] c3_modnum;
    add3 c1(
        .num({1'b0,B[5:3]}),
        .modnum(c1_modnum)
        );
    add3 c2(
        .num({c1_modnum[2:0],B[2]}),
        .modnum(c2_modnum)
        );
    add3 c3(
        .num({c2_modnum[2:0],B[1]}),
        .modnum(c3_modnum)
        );
    
    assign tens = {1'b0,c1_modnum[3],c2_modnum[3],c3_modnum[3]};
    assign ones = {c3_modnum[2:0],B[0]};
    
    
endmodule
