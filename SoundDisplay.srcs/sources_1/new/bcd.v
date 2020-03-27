`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 16:35:28
// Design Name: 
// Module Name: bcd
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


module bcd(input [4:0] binary, output [3:0] bcd1, bcd0);
    assign bcd0 = (binary > 4'd9) ? binary - 4'd10 : binary;
    assign bcd1 = (binary > 4'd9) ? 4'd1 : 0;
endmodule
