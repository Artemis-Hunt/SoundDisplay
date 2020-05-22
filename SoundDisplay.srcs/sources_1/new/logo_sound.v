`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 17:20:12
// Design Name: 
// Module Name: logo_sound
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

module logo_sound(input clock, input [6:0] currX, currY, startY, output reg pixel);
    parameter STARTX = 2, ENDX = 18, LOGO_HEIGHT = 16;
    reg [6:0] index = 0, row = 0;
    wire [256:1] logo;
    assign logo = 256'h000007C007C00FE01FF03FF83FF800001010082047C4200810100FE000000000;
    always @ (posedge clock) begin
        if(currX >= STARTX && currX <= ENDX && currY >= startY && (currY - startY) < LOGO_HEIGHT) begin
            row = currY - startY; index = currX - STARTX;
            pixel = logo[256 - row - index*LOGO_HEIGHT];
        end
        else begin pixel = 0; row = 0; index = 0; end
    end
endmodule