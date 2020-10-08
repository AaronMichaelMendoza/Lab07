`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 11:56:56 AM
// Design Name: 
// Module Name: add3_test
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


module add3_test();

reg [3:0] num;
wire [3:0] modnum;
integer i;

add3 dut(
    .num(num),
    .modnum(modnum)
    );

initial begin
    num[3:0]=4'h0000;
    for (i=0; i < 4'hF; i++) begin
        num = i; 
        #10;
    end
    $finish;  
end
    
     
endmodule
