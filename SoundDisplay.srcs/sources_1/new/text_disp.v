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


module text_disp(input clock, currX, currY, startX, startY, input [7:0] char, output reg pixel);
    reg startFlag = 0;
    reg [3:0] row = 0, index = 0;
    wire [64:1] data;
    
    font font_disp(char, data);
    
    always @ (posedge clock) begin
        if(currX >= startX && currY >= startY && (currY - startY) < 8 && (currX - startX) < 8) begin 
            startFlag = 1; row = currY - startY; index = currX - startX; 
        end
        else begin startFlag = 0; row = 0; index = 0; end
        
        if(startFlag == 1)
            pixel = data[64 - row*8 - index];
    end
endmodule
