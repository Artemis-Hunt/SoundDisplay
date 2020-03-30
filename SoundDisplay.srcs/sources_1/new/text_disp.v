`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 10:27:39
// Design Name: 
// Module Name: text_disp
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


module text_disp(input clock, input [6:0] currX, currY, startX, startY, input [7:0] char, output reg pixel);
    reg startFlag = 0;
    reg [3:0] row = 0, index = 0;
    wire [40:1] data;
    parameter CHAR_WIDTH = 5, CHAR_HEIGHT = 8;
    
    font font_disp(char, data);
    
    //Draws a character in an 5x8 block starting from the given XY coordinates
    always @ (posedge clock) begin
        if(currX >= startX && currY >= startY && (currY - startY) < CHAR_HEIGHT && (currX - startX) < CHAR_WIDTH) begin 
            row = currY - startY; index = currX - startX; 
            pixel = data[40 - row - index*CHAR_HEIGHT];
        end
        else begin pixel = 0; row = 0; index = 0; end
    end
endmodule
