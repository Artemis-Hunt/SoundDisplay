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

//Currently sw[0] == Display full off, sw[1] == Border onOff, sw[2] == SoundBar onOff, sw[15] == Thin/Thick border, btnC == Swap colour Theme
// sw[14] : 1 == hold state, 0 == free state

module coordinate_display(input clock, button_clock, input [3:0]mic_volume, input colour_sel, brd_sel, brd_onOff, bar_onOff, pause,
                            input [12:0] pixel_index, output reg [15:0]OLED_colour = 0);

    wire [6:0] x_coord;
    wire [6:0] y_coord;
    wire border_out;
    wire [1:0] volume_out;
    reg [1:0] colour_select = 0;
    reg [3:0] hold_volume = 0;
    reg [3:0] input_volume = 0;
    
    xycalculator coord(clock, pixel_index, x_coord, y_coord);
    draw_border border1(x_coord, y_coord, clock, brd_sel, brd_onOff, border_out);
    volume_bar volume1(x_coord, y_coord, clock, bar_onOff, input_volume, volume_out); 
    
    always @ (posedge button_clock) //Button Operations
    begin
        if(colour_sel == 1) //Selection of colour for different themes
        begin
            if(colour_select == 2)
                colour_select <= 0;
            else
                colour_select <= colour_select + 1;
        end
        
//        if(volume_sel == 1) //For testing purposes, remove when integrating
//        begin
//            if(mic_volume == 15)
//                mic_volume <= 0;
//            else
//                mic_volume <= mic_volume + 1;
//        end
    end
    
    always @ (posedge clock) //Pause Function (clock will be same output clock as mic LEDs)
    begin
        if(pause == 0)
            hold_volume = mic_volume;
        input_volume = (pause) ? hold_volume : mic_volume;    
    end

    always @ (posedge clock) //Pixel Data output multiplexer
    begin
        case(colour_select)
        2'd0: OLED_colour = (volume_out == 3) ? 16'hF800 : (volume_out == 2) ? 16'hFFE0 : (volume_out == 1) ? 16'h5FE0 : (border_out) ? 16'hFFFF : 16'h0000;
        2'd1: OLED_colour = (volume_out == 3) ? 16'hDFFF : (volume_out == 2) ? 16'h3EFE : (volume_out == 1) ? 16'h0914 : (border_out) ? 16'h07FF : 16'hB01F;
        2'd2: OLED_colour = (volume_out == 3) ? 16'h2145 : (volume_out == 2) ? 16'h9534 : (volume_out == 1) ? 16'h57B9 : (border_out) ? 16'hFCA0 : 16'h9841;
        endcase
    end

endmodule
