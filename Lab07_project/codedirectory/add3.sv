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
    output [3:0] modnum
    );
    
    reg [3:0] w;
    
    always @* begin
    if (num > 4'b0100)  
        w = num + 4'b0011;
    else
        w = num;
    end
    
    assign modnum = w;
        
endmodule
