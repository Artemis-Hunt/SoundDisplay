`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 14:39:08
// Design Name: 
// Module Name: spc
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


module spc(input CLOCK, btnC, output reg signal = 0);
    wire slowclk, q1, q2;
    
    clk6 div(CLOCK, slowclk);
    dff dff1(slowclk, btnC, q1);
    dff dff2(slowclk, q1, q2);
    
    always @ (posedge slowclk) begin
        signal <= (q1 & ~q2);
    end
    
endmodule
