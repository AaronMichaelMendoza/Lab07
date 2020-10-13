`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2020 12:43:01 PM
// Design Name: 
// Module Name: six_bit_BCD_test
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


module six_bit_BCD_test();
    reg [5:0] B;
    wire [3:0] tens;
    wire [3:0] ones;
    integer i;
    
    six_bit_BCD dut(
        .B(B),
        .tens(tens),
        .ones(ones)
        );
        
    initial begin
    B[5:0]=6'b000000;
    for (i=0; i < 6'b111111; i++) begin
        B = i; 
        #10;
    end
    $finish;  
end
endmodule
