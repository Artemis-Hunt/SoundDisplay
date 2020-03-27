`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 15:05:56
// Design Name: 
// Module Name: clk20k
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


module clk(input CLOCK, input [31:0] threshold, output reg slowclk = 0);
   
    reg [31:0] count = 0;
    always @ (posedge CLOCK) begin
        count <= (count == threshold) ? 0 : count + 1;
        slowclk <= (count == 0) ? ~slowclk : slowclk;
    end
    
endmodule
