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

 
module start_tetris(input clock, clk20Hz, input [6:0] currX, currY, input btnU, btnD, btnL, btnR, btnC, output reg [1:0] gamestate=3, output reg [16:0] colour = 16'hFFFF, output reg pixel, 
                    output reg tetris_enable, output reg gameReset);
    parameter MAX_LEN = 15;
    reg [1:0] opt_sel = 0;
    reg [2:0] row = 0;
    reg [19:0] button_debounce = 0;
    wire logo_out, continue_out, newgame_out, credits_out;
    wire [MAX_LEN*8:1] continue, newgame, credits;
    wire [MAX_LEN*8:1] cred_disp [7:0];
    
    assign continue = (opt_sel == 0) ? {8'h7E, "Continue    "}: "Continue    ";
    assign newgame = (opt_sel == 1) ? {8'h7E, "New Game    "}: "New Game    ";
    assign credits = (opt_sel == 2) ? {8'h7E, " Credits    "}: " Credits    ";
    
    logo_tetris(clock, currX, currY, 6, logo_out);
    str_oled option1(clock, currX, currY, 29, continue, continue_out);
    str_oled option2(clock, currX, currY, 39, newgame, newgame_out);
    str_oled option3(clock, currX, currY, 49, credits, credits_out);
    str_oled credits0(clock, currX, currY, 0, "Programmers    ", cred_disp[0]);
    str_oled credits1(clock, currX, currY, 8, "Danzel", cred_disp[1]);
    str_oled credits2(clock, currX, currY, 16, "Yu Hang", cred_disp[2]);
    str_oled credits3(clock, currX, currY, 24, "Designers      ", cred_disp[3]);
    str_oled credits4(clock, currX, currY, 32, "Yu Hang", cred_disp[4]);
    str_oled credits5(clock, currX, currY, 40, "Danzel", cred_disp[5]);
    str_oled credits6(clock, currX, currY, 48, "Special Thanks ", cred_disp[6]);
    str_oled credits7(clock, currX, currY, 56, "EE Profs TAs", cred_disp[7]);
    
    always @ (posedge clock)
    begin
        if(gameReset == 1 && gamestate == 1)
            gameReset = 0;
        if(btnU) begin
            if(gamestate == 2 || gamestate == 1 || gamestate == 0)
                gamestate = 3;
            else
                opt_sel = (opt_sel == 0) ? 0 : opt_sel - 1;
        end
        if(btnD)
            opt_sel = (opt_sel == 2) ? 2 : opt_sel + 1;
        if(btnC && (gamestate != 1 && gamestate != 0))
        begin
            gamestate = opt_sel;
            if(gamestate == 1)
                gameReset =  1;
        end
    end
    
    //Gamestate 3: Start screen; state 2: Credits; state 1: New game; state 0: Continue
    always @ (posedge clock) begin
        button_debounce <= (button_debounce == 156_249) ? 0 : button_debounce + 1;  //Check for button inputs at a frequency of 20Hz
        if(gamestate == 3) begin //Main Menu
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
        else if(gamestate == 2) begin   //Credits
            row <= currY / 8;
            pixel <= cred_disp[row];
        end
        tetris_enable = (gamestate == 1 || gamestate == 0) ? 1 : 0;
    end
endmodule
