`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 12:08:43
// Design Name: 
// Module Name: str_oled
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


module str_oled(input clock, input [6:0] currX, currY, input [2:0] row, input [11*8:1] string, output reg pixel);
    reg [7:0] chardata [31:0];
    wire [11:0] pixOpt;
    reg [3:0] i;
    
    text_disp text0(clock, currX, currY, 3, row*8, string[11*8 -: 8], pixOpt[0]);
    text_disp text1(clock, currX, currY, 3+1*8, row*8, string[10*8 -: 8], pixOpt[1]);
    text_disp text2(clock, currX, currY, 3+2*8, row*8, string[9*8 -: 8], pixOpt[2]);
    text_disp text3(clock, currX, currY, 3+3*8, row*8, string[8*8 -: 8], pixOpt[3]);
    text_disp text4(clock, currX, currY, 3+4*8, row*8, string[7*8 -: 8], pixOpt[4]);
    text_disp text5(clock, currX, currY, 3+5*8, row*8, string[6*8 -: 8], pixOpt[5]);
    text_disp text6(clock, currX, currY, 3+6*8, row*8, string[5*8 -: 8], pixOpt[6]);
    text_disp text7(clock, currX, currY, 3+7*8, row*8, string[4*8 -: 8], pixOpt[7]);
    text_disp text8(clock, currX, currY, 3+8*8, row*8, string[3*8 -: 8], pixOpt[8]);
    text_disp text9(clock, currX, currY, 3+9*8, row*8, string[2*8 -: 8], pixOpt[9]);
    text_disp text10(clock, currX, currY, 3+10*8, row*8, string[1*8 -: 8], pixOpt[10]);
    
    always @ (posedge clock) begin
        if(currX >=3 && currX <= 83) begin
            i <= (currX - 3) / 8;
            pixel <= pixOpt[i];
        end
        else pixel <=0;
    end

    
    
    
endmodule
