`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 17:08:06
// Design Name: 
// Module Name: start_tetris
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

//LOGO startY = 6, CONTINUE: startX = 23, startY = 29 NEW GAME: startX = 23, startY = 39 CREDITS: startX = 26, startY = 49 
module start_tetris(input clock, input [6:0] currX, currY, input btnU, btnD, btnC, output reg [1:0] gamestate=3, output reg pixel);
    reg [1:0] opt_sel = 0;
    wire logo_out, continue_out, newgame_out, credits_out;
    wire [9*8:1] continue, newgame, credits;
    
    assign continue = (opt_sel == 0) ? {8'h7E, "Continue    "}: "Continue    ";
    assign newgame = (opt_sel == 1) ? {8'h7E, "New Game    "}: "New Game    ";
    assign credits = (opt_sel == 2) ? {8'h7E, " Credits    "}: " Credits    ";
    
    logo_tetris(clock, currX, currY, 6, logo_out);
    str_oled option1(clock, currX, currY, 29, continue, continue_out);
    str_oled option2(clock, currX, currY, 39, newgame, newgame_out);
    str_oled option3(clock, currX, currY, 49, credits, credits_out);
    
    
    always @ (posedge clock) begin
        if(btnU)
            opt_sel <= (opt_sel == 0) ? 0 : opt_sel - 1;
        if(btnD)
            opt_sel <= (opt_sel == 2) ? 2 : opt_sel + 1;
        if(btnC)
            gamestate <= opt_sel;
            
        if(currY >= 6 && currY <= 21)
            pixel <= logo_out;
        else if(currY >= 29 && currY <=36)
            pixel <= continue_out;
        else if(currY >=39 && currY <=46)
            pixel <= newgame_out;
        else if(currY >=49 && currY <=56)
            pixel <= credits_out;
        else pixel <= 0;
            
        
            
            
    
    end
endmodule
