`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2020 09:43:33 PM
// Design Name: 
// Module Name: elev_BCD_test
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


module elev_BCD_test_();

    reg[10:0] B;
    wire[3:0] ones;
    wire[3:0] tens;
    wire[3:0] hundreds;
    wire[3:0] thousands;
    integer i;
    
    eleven_bit_BCD dut(
        .B(B),
        .ones(ones),
        .tens(tens),
        .hundreds(hundreds),
        .thousands(thousands)
        );
        
    initial begin
    B[10:0]=11'b00000000000;
    for (i = 0; i < 11'b1111111111; i++) begin
        B=i; #10;
        end
    end    
endmodule