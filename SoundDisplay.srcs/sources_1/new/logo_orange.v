`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 16:24:27
// Design Name: 
// Module Name: logo_orange
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


module logo_orange(input clock, input [6:0] currX, currY, output reg pixel);
    parameter STARTX = 0, ENDX = 95, LOGO_HEIGHT = 56, startY = 3;
    reg [6:0] index = 0, row = 0;
    wire [5376:1] logo;
    assign logo = 5376'h0000000000000000000000000000FFFFFFFFFC0000800000000F000087FF000403C0008403000E00F8008C03001F003C0088060007C00F0088040003E003C0880600007000F08C03000018003883FF005F88021C8C0300FFE01E0C880600EBB07F068804007970FC06880600EBB1E0078C0300FFE3C0038403005F8F800387FF00001F0003800000007F000380000003FF4003803E0001FEE803804100C1FEFC07808081E1FC7E0687E08331FA300688908619F3080C905E8419FBBC1C90510419FFFE3890BE8431FFF8F088808460FE61C087E080C0FC0F80808080C1803E008041006700F800803E003E03C000800000000F0000FFFFFFFFFC0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
    always @ (posedge clock) begin
        if(currX >= STARTX && currX <= ENDX && currY >= startY && (currY - startY) < LOGO_HEIGHT) begin
            row = currY - startY; index = currX - STARTX;
            pixel = logo[5376 - row - index*LOGO_HEIGHT];
        end
        else begin pixel = 0; row = 0; index = 0; end
    end
endmodule