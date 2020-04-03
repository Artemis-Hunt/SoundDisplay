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
                            output [3:0] an, output [7:0] seg, input [12:0] pixel_index, output reg [15:0]OLED_colour = 0, 
                            output reg customColour = 0, input watchMode, output [7:0] top_left_seg, block_state_seg);

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
    wire [1:0] gamestate;
    wire tetris_enable, tetris_reset;
    
    reg custom_volume = 0;
    reg mode_brd, mode_background, mode_low, mode_med, mode_high;
    reg custom_flag = 0;
    reg [3:0] button_counter = 0;
    wire [15:0] high_colour, med_colour, low_colour, background_colour, border_colour, tetris_colour, tetrisGame_colour;
    wire [3:0] an1, an2, an3, an4, an5;
    wire [7:0] seg1, seg2, seg3, seg4, seg5;
    
    xycalculator coord(clock, pixel_index, x_coord, y_coord);
    draw_border border1(x_coord, y_coord, clock, brd_sel, brd_onOff, border_out, blink_clock, mode_brd, customColour);
    volume_bar volume1(x_coord, y_coord, clock, bar_onOff, input_volume, volume_out, blink_clock, mode_low, mode_med, mode_high, customColour); 
   
    
    //Tetris
    //logo_tetris(clock, x_coord, y_coord, 40, logo_out);
    start_tetris tetrisMenu(clock, button_clock, x_coord, y_coord, tetris_start_up, tetris_start_down, tetris_start_left, tetris_start_right, tetris_start_mid,
                    gamestate, tetris_colour, tetris_out, tetris_enable, tetris_reset);
    tetris_main tetrisgame(button_clock, clock, tetris_enable, tetris_reset, tetris_start_up, tetris_start_down, tetris_start_left, tetris_start_right, 
                    tetris_start_mid, x_coord, y_coord, tetrisGame_colour, top_left_seg,block_state_seg);
    
    //Peak and Average Values
    peak_average peakAvg(mic_volume, button_clock, mid_sel, colour_select);
                    
    assign tetris_start_up = (colour_select == 4) ? up_sel : 0;
    assign tetris_start_down = (colour_select == 4) ? down_sel : 0;
    assign tetris_start_left = (colour_select == 4) ? left_sel : 0;
    assign tetris_start_right = (colour_select == 4) ? right_sel : 0;
    assign tetris_start_mid = (colour_select == 4) ? mid_sel : 0;
    assign tetris_game_up = (tetris_enable) ? up_sel : 0;
    assign tetris_game_down = (tetris_enable) ? down_sel : 0;
    assign tetris_game_left = (tetris_enable) ? left_sel : 0;
    assign tetris_game_right = (tetris_enable) ? right_sel : 0;
    assign tetris_game_mid = (tetris_enable) ? mid_sel : 0;
    
    
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
        if(custom_flag != 1 && gamestate == 3)
        begin
            if(left_sel == 1) //Scroll left to choose theme
            begin
                if(colour_select == 0)
                    colour_select <= 0;
                else
                    colour_select <= colour_select - 1;
            end
            if(right_sel == 1) //Scroll right to choose theme
            begin
                if(colour_select == 4)
                    colour_select <= 4;
                else
                    colour_select <= colour_select + 1;
            end
        end
        
        if(mid_sel == 1 && colour_select == 3  && watchMode != 1) //Enter custom colour mode
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
        case(colour_select)
        3'd0: OLED_colour = (volume_out == 3) ? 16'hF800 : (volume_out == 2) ? 16'hFFE0 : (volume_out == 1) ? 16'h5FE0 : (border_out) ? 16'hFFFF : 16'h0000;
        3'd1: OLED_colour = (volume_out == 3) ? 16'hDFFF : (volume_out == 2) ? 16'h3EFE : (volume_out == 1) ? 16'h0914 : (border_out) ? 16'h07FF : 16'hB01F;
        3'd2: OLED_colour = (volume_out == 3) ? 16'h2145 : (volume_out == 2) ? 16'h9534 : (volume_out == 1) ? 16'h57B9 : (border_out) ? 16'hFCA0 : 16'h9841;
        3'd3: OLED_colour = (volume_out == 3) ? high_colour : (volume_out == 2) ? med_colour : (volume_out == 1) ? low_colour : (border_out) ? 
                                border_colour : (mode_background == 1 && back_blink == 0) ? 16'h3186 : background_colour;
        3'd4: OLED_colour = (tetris_enable) ? tetrisGame_colour : (tetris_out) ? tetris_colour : 0;
        endcase
    end
    
    assign an = (button_counter == 4) ? an5 : (button_counter == 3) ? an4 : (button_counter == 2) ? an3: (button_counter == 1) ? an2 : an1;
    assign seg = (button_counter == 4) ? seg5 : (button_counter == 3) ? seg4 : (button_counter == 2) ? seg3: (button_counter == 1) ? seg2 : seg1;

endmodule
