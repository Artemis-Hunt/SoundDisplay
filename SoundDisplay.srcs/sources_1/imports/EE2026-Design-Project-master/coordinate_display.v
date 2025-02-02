`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 15:35:38
// Design Name: 
// Module Name: coordinate_display
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

//Button_left == scroll left, button_right == scroll right, sw[15] = Border thick/thin, sw[14] == Border on Off, sw[13] == barOnOff, sw[12] == hold state
// Theme 3 + center button == custom mode

module coordinate_display(input clock, clk40sig, button_clock, text_clock, blink_clock, back_blink, input [3:0]mic_volume, 
                            input mid_sel, right_sel, left_sel, up_sel, down_sel, brd_sel, brd_onOff, bar_onOff, pause, text_onOff,
                            output [3:0] an, output [7:0] seg, input [12:0] pixel_index, output reg [15:0]final_colour = 0,  
							output reg customColour = 0, input watchMode, output reg startMode = 1, output [2:0] gameOut, output reg watch_start = 0, output tetris_start_screen, output reg menuMode = 1);

    wire [6:0] x_coord;
    wire [6:0] y_coord;
    wire border_out, text_out, text_out2, string_out, string1_out, logo_out, tetris_out;
    wire [1:0] volume_out;
    reg [2:0] colour_select = 0;
    reg [3:0] hold_volume = 0;
    reg [3:0] input_volume = 0;
    wire [6:0] text_x, text_y;
    wire [4:0] letter_code;
    wire tetris_start_up, tetris_start_down, tetris_start_mid, tetris_start_left, tetris_start_right;
    wire tetris_game_up, tetris_game_down, tetris_game_mid, tetris_game_left, tetris_game_right;
    wire tetris_enable, tetris_reset, first_game, exit_tetris;
    wire [2:0] gamestate;
    
    reg custom_volume = 0;
    reg mode_brd, mode_background, mode_low, mode_med, mode_high;
    reg custom_flag = 0;
    reg [3:0] button_counter = 0;
    wire [15:0] high_colour, med_colour, low_colour, background_colour, border_colour, tetris_colour, tetrisGame_colour;
    wire [3:0] an1, an2, an3, an4, an5;
    wire [7:0] seg1, seg2, seg3, seg4, seg5;
    wire [15:0] peakAvgOut;
    wire orange_out, white_out, blue_out;
    wire iconGame, iconSound, iconWatch, textGame, textWatch, textSound, stopwatchText;
    reg [1:0] menuSelect = 0;
    
    reg [15:0] OLED_colour = 0;
    reg [15:0] startScreen = 0;
    reg [15:0] menucolour = 0;
    
    xycalculator coord(clock, pixel_index, x_coord, y_coord);
    draw_border border1(x_coord, y_coord, clock, brd_sel, brd_onOff, border_out, blink_clock, mode_brd, customColour);
    volume_bar volume1(x_coord, y_coord, clock, bar_onOff, input_volume, volume_out, blink_clock, mode_low, mode_med, mode_high, customColour); 
    
    //Main Menu NUS Logo
    logo_orange orange(clock, x_coord, y_coord, orange_out); 
    logo_white white(clock, x_coord, y_coord, white_out);
    logo_blue blue(clock, x_coord, y_coord, blue_out);
    
    //Main Menu Logo
    logo_game menuGame(clock, x_coord, y_coord, 43, iconGame);
    logo_watch menuWatch(clock, x_coord, y_coord, 24, iconWatch);
    logo_sound menuSound(clock, x_coord, y_coord, 5, iconSound);
    
    str_oled gameText(clock, x_coord, y_coord, 47, (menuSelect == 2) ? {"GAME ", 8'h7F} : "GAME  ", textGame);
    str_oled gameWatch(clock, x_coord, y_coord, 28, (menuSelect == 1 ) ? {"STOPWATCH ", 8'h7F} : "STOPWATCH  ", textWatch);
    str_oled gameSound(clock, x_coord, y_coord, 9, (menuSelect == 0 ) ? {"SOUND ", 8'h7F} : "SOUND  ", textSound);
    
    str_oled stopWatchText(clock, x_coord, y_coord, 28, "   STOPWATCH   ", stopwatchText);
    
    //Tetris
    //logo_tetris(clock, x_coord, y_coord, 40, logo_out);
    start_tetris tetrisMenu(clock, button_clock, x_coord, y_coord, tetris_start_up, tetris_start_down, tetris_start_left, tetris_start_right, tetris_start_mid,
                            first_game, tetris_start_screen, gamestate, tetris_colour, tetris_out, tetris_enable, tetris_reset, exit_tetris);
    tetris_main tetrisgame(button_clock, clock, tetris_enable, tetris_reset, tetris_start_up, tetris_start_down, tetris_start_left, tetris_start_right, 
							tetris_start_mid, x_coord, y_coord, tetrisGame_colour, first_game);
    assign gameOut = gamestate;
    
    //Peak and Average Values
    peak_average peakAvg(mic_volume, clock, button_clock, mid_sel, colour_select, x_coord, y_coord, peakAvgOut);
                    
    assign tetris_start_up = (colour_select == 5 && menuMode == 0) ? up_sel : 0;
    assign tetris_start_down = (colour_select == 5 && menuMode == 0) ? down_sel : 0;
    assign tetris_start_left = (colour_select == 5 && menuMode == 0) ? left_sel : 0;
    assign tetris_start_right = (colour_select == 5 && menuMode == 0) ? right_sel : 0;
    assign tetris_start_mid = (colour_select == 5 && menuMode == 0) ? mid_sel : 0;
    assign tetris_game_up = (tetris_enable) ? up_sel : 0;
    assign tetris_game_down = (tetris_enable) ? down_sel : 0;
    assign tetris_game_left = (tetris_enable) ? left_sel : 0;
    assign tetris_game_right = (tetris_enable) ? right_sel : 0;
    assign tetris_game_mid = (tetris_enable) ? mid_sel : 0;
    
    assign tetris_start_screen = (colour_select == 5 && menuMode == 0);
    
    //Modules to enable custom colours
    custom_border customborder(text_clock, button_clock, blink_clock, mid_sel, right_sel, left_sel, up_sel, 
                                down_sel, custom_flag, mode_brd, an1, seg1, border_colour);
    custom_background custombackgrd(text_clock, button_clock, blink_clock, mid_sel, right_sel, left_sel, up_sel, 
                                down_sel, custom_flag, mode_background, an2, seg2, background_colour);
    custom_low customLow(text_clock, button_clock, blink_clock, mid_sel, right_sel, left_sel, up_sel,down_sel, 
                                custom_flag, mode_low, an3, seg3, low_colour);                                
    custom_med customMed(text_clock, button_clock, blink_clock, mid_sel, right_sel, left_sel, up_sel,down_sel, 
                                custom_flag, mode_med, an4, seg4, med_colour);
    custom_high customHigh(text_clock, button_clock, blink_clock, mid_sel, right_sel, left_sel, up_sel,down_sel, 
                                custom_flag, mode_high, an5, seg5, high_colour);
    
    always @ (posedge button_clock) //Button Operations
    begin
    //StartScreen
        if(custom_flag != 1 && colour_select <= 4  && startMode == 0 && menuMode == 0)
        begin
            if(left_sel == 1) //Scroll left to choose theme
            begin
                if(colour_select == 0)
                    colour_select = 0;
                else
                    colour_select = colour_select - 1;
            end
            if(right_sel == 1) //Scroll right to choose theme
            begin
                if(colour_select == 4)
                    colour_select = 4;
                else
                    colour_select = colour_select + 1;
            end
            if(up_sel == 1 && menuMode == 0)
                menuMode = 1;
        end
        else if(colour_select == 6)
            if(up_sel == 1 && menuMode == 0) begin
                menuMode = 1;
                watch_start = 0;
            end
            
        if(exit_tetris && tetris_start_screen)
            menuMode = 1;
        
        //Menu Operations
        if(menuMode == 1 && up_sel == 1 && startMode == 0)
        begin
            if(menuSelect == 0)
                menuSelect = 0;
             else
                menuSelect = menuSelect - 1;
        end
        else if(menuMode == 1 && down_sel == 1 && startMode == 0)   
        begin
            if(menuSelect == 2)
                menuSelect = 2;
            else
                menuSelect = menuSelect + 1;
        end
        
        if(mid_sel == 1 && menuMode == 1 && startMode == 0)
        begin
            menuMode = 0;
            if(menuSelect == 0) //Enter Sound Display mode
                colour_select = 0;
            if(menuSelect == 1) //Enter StopWatch mode
            begin
                colour_select = 6;
                watch_start = 1;
            end
            if(menuSelect == 2) //Tetris mode
                colour_select = 5;
        end
        
        //Turn off boot screen
        if(startMode == 1 && mid_sel == 1)
            startMode = 0;
        
        if(mid_sel == 1 && colour_select == 3  && watchMode != 1 && menuMode == 0) //Enter custom colour mode
        begin
            customColour <= 1;
            custom_flag <= 1;
        end
        
        if(custom_flag == 1 && mid_sel == 1)
            button_counter <= button_counter + 1;
            
        case(button_counter)
        4'd0: begin mode_brd <= 1; end
        4'd1: begin mode_brd <= 0; mode_background <= 1; end
        4'd2: begin mode_background <= 0; mode_low <= 1; end
        4'd3: begin mode_low <= 0; mode_med <= 1; end
        4'd4: begin mode_med <= 0; mode_high <= 1; end 
        4'd5: begin mode_high <= 0; custom_flag <= 0; customColour <= 0; button_counter <= 0; end
        endcase
            
    end
    
    always @ (posedge button_clock) //Pause Function (clock will be same output clock as mic LEDs)
    begin
        //Hold volume
        if(pause == 0)
            hold_volume = mic_volume;
        
        //Force volume bar to hold at max volume
        if(custom_flag == 1)
            custom_volume <= 1;
        else
            custom_volume <= 0;
        
        input_volume = (custom_volume) ? 15 : (pause) ? hold_volume : mic_volume;             
    end

    always @ (posedge clock) //Pixel Data output multiplexer
    begin
        startScreen = (orange_out) ? 16'hFDA0 : (white_out) ? 16'hFFFF : (blue_out) ? 16'h014B : 16'h014B;
        menucolour = (iconGame || iconWatch || iconSound || textGame || textWatch || textSound) ? 16'hFFFF : 16'h0000;
        
        case(colour_select)
        3'd0: OLED_colour = (volume_out == 3) ? 16'hF800 : (volume_out == 2) ? 16'hFFE0 : (volume_out == 1) ? 16'h5FE0 : (border_out) ? 16'hFFFF : 16'h0000;
        3'd1: OLED_colour = (volume_out == 3) ? 16'hDFFF : (volume_out == 2) ? 16'h3EFE : (volume_out == 1) ? 16'h0914 : (border_out) ? 16'h07FF : 16'hB01F;
        3'd2: OLED_colour = (volume_out == 3) ? 16'h2145 : (volume_out == 2) ? 16'h9534 : (volume_out == 1) ? 16'h57B9 : (border_out) ? 16'hFCA0 : 16'h9841;
        3'd3: OLED_colour = (volume_out == 3) ? high_colour : (volume_out == 2) ? med_colour : (volume_out == 1) ? low_colour : (border_out) ? 
                                border_colour : (mode_background == 1 && back_blink == 0) ? 16'h3186 : background_colour;
        3'd4: OLED_colour = peakAvgOut;
        3'd5: OLED_colour = (tetris_enable) ? tetrisGame_colour : (tetris_out) ? tetris_colour : 0;
        3'd6: OLED_colour = (stopwatchText) ? 16'hFCA0 : 16'h0000;
        endcase
        
        final_colour = (startMode) ? startScreen : (menuMode) ? menucolour : OLED_colour;
    end
    
    assign an = (button_counter == 4) ? an5 : (button_counter == 3) ? an4 : (button_counter == 2) ? an3: (button_counter == 1) ? an2 : an1;
    assign seg = (button_counter == 4) ? seg5 : (button_counter == 3) ? seg4 : (button_counter == 2) ? seg3: (button_counter == 1) ? seg2 : seg1;

endmodule
