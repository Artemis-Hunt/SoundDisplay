`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 14:40:07
// Design Name: 
// Module Name: clk6
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


module clk6(input CLOCK, output reg slowclk);
    reg [23:0]count = 0;
    
    always @ (posedge CLOCK) begin
        count <= count + 1;
        slowclk <= count[23];
    end
    
endmodule
