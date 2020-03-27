`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 22:28:09
// Design Name: 
// Module Name: xycalculator
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


module xycalculator(input clock, input [12:0]pixel_index, output reg [6:0] x, output reg [6:0] y);
    
    always @ (posedge clock)
    begin
        x = pixel_index % 96;
        y = pixel_index / 96;
    end
endmodule
