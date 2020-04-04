`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 23:36:13
// Design Name: 
// Module Name: next_L
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

module next_L(input clock, input [6:0] currX, currY, startY, output reg pixel);
    parameter STARTX = 64, ENDX = 73, LOGO_HEIGHT = 16;
    reg [6:0] index = 0, row = 0;
    wire [144:1] logo;
    assign logo = 144'h000000003FF03FF03FF00070007000700000;
    always @ (posedge clock) begin
        if(currX >= STARTX && currX <= ENDX && currY >= startY && (currY - startY) < LOGO_HEIGHT) begin
            row = currY - startY; index = currX - STARTX;
            pixel = logo[144 - row - index*LOGO_HEIGHT];
        end
        else begin pixel = 0; row = 0; index = 0; end
    end
endmodule

