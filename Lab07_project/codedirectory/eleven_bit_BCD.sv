`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 01:02:29 PM
// Design Name: 
// Module Name: eleven_bit_BCD
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


module eleven_bit_BCD(
    input [10:0] B,
    output [3:0] ones,
    output [3:0] tens,
    output [3:0] hundreds,
    output [3:0] thousands
    );
    
    wire[3:0] c1_modnum;
    wire[3:0] c2_modnum;
    wire[3:0] c3_modnum;
    wire[3:0] c4_modnum;
    wire[3:0] c5_modnum;
    wire[3:0] c6_modnum;
    wire[3:0] c7_modnum;
    wire[3:0] c8_modnum;
    wire[3:0] c9_modnum;
    wire[3:0] c10_modnum;
    wire[3:0] c11_modnum;
    wire[3:0] c12_modnum;
    wire[3:0] c13_modnum;
    wire[3:0] c14_modnum;
    wire[3:0] c15_modnum;
    
    add3 c1(
        .num({1'b0,B[10:8]}),
        .modnum(c1_modnum)
        );      
    add3 c2(
        .num({c1_modnum[2:0],B[7]}),
        .modnum(c2_modnum)
        );    
    add3 c3(
        .num({c2_modnum[2:0],B[6]}),
        .modnum(c3_modnum)
        );        
    add3 c4(
        .num({c3_modnum[2:0],B[5]}),
        .modnum(c4_modnum)
        );      
    add3 c5(
        .num({c4_modnum[2:0],B[4]}),
        .modnum(c5_modnum)
        );
    add3 c6(
        .num({c5_modnum[2:0],B[3]}),
        .modnum(c6_modnum)
        );
    add3 c7(
        .num({c6_modnum[2:0],B[2]}),
        .modnum(c7_modnum)
        );
    add3 c8(
        .num({c7_modnum[2:0],B[1]}),
        .modnum(c8_modnum)
        );
    add3 c9(
        .num({1'b0,c1_modnum[3],c2_modnum[3],c3_modnum[3]}),
        .modnum(c9_modnum)
        );
    add3 c10(
        .num({c9_modnum[2:0],c4_modnum[3]}),
        .modnum(c10_modnum)
        );
    add3 c11(
        .num({c10_modnum[2:0],c5_modnum[3]}),
        .modnum(c11_modnum)
        );
    add3 c12(
        .num({c11_modnum[2:0],c6_modnum[3]}),
        .modnum(c12_modnum)
        );
    add3 c13(
        .num({c12_modnum[2:0],c7_modnum[3]}),
        .modnum(c13_modnum)
        );
    add3 c14(
        .num({1'b0,c9_modnum[3],c10_modnum[3],c11_modnum[3]}),
        .modnum(c14_modnum)
        );
    add3 c15(
        .num({c14_modnum[2:0],c12_modnum[3]}),
        .modnum(c15_modnum)
        );
        
    assign ones={c8_modnum[2:0],B[0]};
    assign tens={c13_modnum[2:0],c8_modnum[3]};
    assign hundreds={c15_modnum[2:0],c13_modnum[3]};
    assign thousands={1'b0,1'b0,1'b0,c14_modnum[3]};
    
endmodule
