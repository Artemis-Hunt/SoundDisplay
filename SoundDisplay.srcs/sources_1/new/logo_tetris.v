`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 16:24:27
// Design Name: 
// Module Name: logo_tetris
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


module logo_tetris(input clock, input [6:0] currX, currY, startY, output reg pixel);
    parameter STARTX = 15, ENDX = 78, LOGO_HEIGHT = 16;
    reg [6:0] index = 0, row = 0;
    wire [1024:1] logo;
    assign logo = 1024'hFE00FC00F000C000FFFFFFFFFFFFFFFFC000F000FC00FE0000000000FFFFFFFF8181C3C3E7E7F00FF81FFC3F00000000FE00FC00F000C000FFFFFFFFFFFFFFFFC000F000FC00FE0000000000FFFFFFFFFFFFFFBFFF9FFF0F7E073C03180100000000FFFFFFFFFFFF000000003C1FFE0F8F07878383C181E1C0F1E039F01FF81E;
    always @ (posedge clock) begin
        if(currX >= STARTX && currX <= ENDX && currY >= startY && (currY - startY) < LOGO_HEIGHT) begin
            row = currY - startY; index = currX - STARTX;
            pixel = logo[1024 - row - index*LOGO_HEIGHT];
        end
        else begin pixel = 0; row = 0; index = 0; end
    end
endmodule
