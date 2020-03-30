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


module str_oled(input clock, input [6:0] currX, currY, input [2:0] row, input [15*8:1] string, output reg pixel);
    reg [7:0] chardata [31:0];
    wire [14:0] pixOpt;
    reg [3:0] i;
    parameter CHAR_WIDTH = 5, CHAR_HEIGHT = 8, START_INDEX = 2, END_INDEX = 91;
    
    text_disp text0(clock, currX, currY, START_INDEX, row*8, string[15*8 -: 8], pixOpt[0]);
    text_disp text1(clock, currX, currY, START_INDEX+1*(CHAR_WIDTH+1), row*8, string[14*8 -: 8], pixOpt[1]);
    text_disp text2(clock, currX, currY, START_INDEX+2*(CHAR_WIDTH+1), row*8, string[13*8 -: 8], pixOpt[2]);
    text_disp text3(clock, currX, currY, START_INDEX+3*(CHAR_WIDTH+1), row*8, string[12*8 -: 8], pixOpt[3]);
    text_disp text4(clock, currX, currY, START_INDEX+4*(CHAR_WIDTH+1), row*8, string[11*8 -: 8], pixOpt[4]);
    text_disp text5(clock, currX, currY, START_INDEX+5*(CHAR_WIDTH+1), row*8, string[10*8 -: 8], pixOpt[5]);
    text_disp text6(clock, currX, currY, START_INDEX+6*(CHAR_WIDTH+1), row*8, string[9*8 -: 8], pixOpt[6]);
    text_disp text7(clock, currX, currY, START_INDEX+7*(CHAR_WIDTH+1), row*8, string[8*8 -: 8], pixOpt[7]);
    text_disp text8(clock, currX, currY, START_INDEX+8*(CHAR_WIDTH+1), row*8, string[7*8 -: 8], pixOpt[8]);
    text_disp text9(clock, currX, currY, START_INDEX+9*(CHAR_WIDTH+1), row*8, string[6*8 -: 8], pixOpt[9]);
    text_disp text10(clock, currX, currY, START_INDEX+10*(CHAR_WIDTH+1), row*8, string[5*8 -: 8], pixOpt[10]);
    text_disp text11(clock, currX, currY, START_INDEX+11*(CHAR_WIDTH+1), row*8, string[4*8 -: 8], pixOpt[11]);
    text_disp text12(clock, currX, currY, START_INDEX+12*(CHAR_WIDTH+1), row*8, string[3*8 -: 8], pixOpt[12]);
    text_disp text13(clock, currX, currY, START_INDEX+13*(CHAR_WIDTH+1), row*8, string[2*8 -: 8], pixOpt[13]);
    text_disp text14(clock, currX, currY, START_INDEX+14*(CHAR_WIDTH+1), row*8, string[1*8 -: 8], pixOpt[14]);
    
    always @ (posedge clock) begin
        if(currX >=START_INDEX && currX <= END_INDEX) begin
            i <= (currX - START_INDEX) / (CHAR_WIDTH+1);
            pixel <= pixOpt[i];
        end
        else pixel <=0;
    end

    
    
    
endmodule
