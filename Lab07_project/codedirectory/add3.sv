`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Aaron Mendoza
// 
// Create Date: 10/08/2020 11:42:34 AM
// Design Name: 
// Module Name: add3
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


module add3(
    input [3:0] num,
    output reg [3:0] modnum
    );
    
    always @* begin
    if (num[3:0] > 4'b0100)  
        modnum[3:0] = num[3:0] + 4'b0011;
    else
        modnum[3:0] = num[3:0];
    end
        
endmodule
