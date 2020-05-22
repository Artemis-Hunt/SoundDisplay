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

 
module start_tetris(input clock, clk20Hz, input [6:0] currX, currY, input btnU, btnD, btnL, btnR, btnC, input first_game, tetris_start_screen, output reg [2:0] gamestate=4, output reg [15:0] colour = 16'hFFFF, output reg pixel, 
                    output reg tetris_enable, output reg gameReset, output reg exit_tetris = 0);
    parameter MAX_LEN = 15;
    reg [1:0] opt_sel = 1;
    reg [2:0] row = 0;
    reg [19:0] button_debounce = 0;
    wire logo_out, continue_out, newgame_out, credits_out, exit_out;
    wire [MAX_LEN*8:1] continue, newgame, credits, exit;
    wire [MAX_LEN*8:1] cred_disp [7:0];
    
    assign continue = (first_game) ? " " : (opt_sel == 0) ? {8'h7E, "Continue    "}: "Continue    ";
    assign newgame = (opt_sel == 1) ? {8'h7E, "New Game    "}: "New Game    ";
    assign credits = (opt_sel == 2) ? {8'h7E, "Credits     "}: "Credits     ";
    assign exit = (opt_sel == 3) ? {8'h7E, "Exit        "}: "Exit        ";
    
    logo_tetris(clock, currX, currY, 3, logo_out);
    str_oled option1(clock, currX, currY, 24, continue, continue_out);
    str_oled option2(clock, currX, currY, 33, newgame, newgame_out);
    str_oled option3(clock, currX, currY, 42, credits, credits_out);
    str_oled option4(clock, currX, currY, 51, exit, exit_out);
    str_oled credits0(clock, currX, currY, 0, "PROGRAMMERS    ", cred_disp[0]);
    str_oled credits1(clock, currX, currY, 8, "DANZEL", cred_disp[1]);
    str_oled credits2(clock, currX, currY, 16, "YUHANG", cred_disp[2]);
    str_oled credits3(clock, currX, currY, 24, "DESIGNERS      ", cred_disp[3]);
    str_oled credits4(clock, currX, currY, 32, "YUHANG", cred_disp[4]);
    str_oled credits5(clock, currX, currY, 40, "DANZEL", cred_disp[5]);
    str_oled credits6(clock, currX, currY, 48, "SPECIAL THANKS ", cred_disp[6]);
    str_oled credits7(clock, currX, currY, 56, "EE PROFS TAs", cred_disp[7]);
    
    
    always @ (posedge clk20Hz)
    begin
        gameReset = 0;
        exit_tetris = 0;
        if(btnU) begin
            if(gamestate != 4)
                gamestate = 4;
            else
                if(first_game) opt_sel = (opt_sel == 1) ? 1 : opt_sel - 1;
                else opt_sel = (opt_sel == 0) ? 0 : opt_sel - 1;
        end
        else if(btnD && gamestate == 4)
                opt_sel = (opt_sel == 3) ? 3 : opt_sel + 1; 
        if(btnC && gamestate == 4)
        begin
            gamestate = opt_sel;
            if(gamestate == 1)
                gameReset = 1;
            else if(gamestate == 3) begin
                exit_tetris = 1;
                gamestate = 4;
            end
                
        end
    end
    
    //Gamestate 3: Start screen; state 2: Credits; state 1: New game; state 0: Continue
    always @ (posedge clock) begin
        if(gamestate >= 4) begin //Main Menu
            if(currY >= 3 && currY <= 18)
                pixel <= logo_out;
            else if(currY >= 24 && currY <=31)
                pixel <= continue_out;
            else if(currY >=33 && currY <=40)
                pixel <= newgame_out;
            else if(currY >=42 && currY <=49)
                pixel <= credits_out;
            else if(currY >=51 && currY <=58)
                pixel <= exit_out;
            else pixel <= 0;
        end
        else if(gamestate == 2) begin   //Credits
            row <= currY / 8;
            pixel <= cred_disp[row];
        end
        tetris_enable = (gamestate == 1 || gamestate == 0);
    end
endmodule
