`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2020 23:15:13
// Design Name: 
// Module Name: volume_bar
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

//16 sound bars, 15 black lines: 58 horizontal rows to work with (Green & Yellow = 3 Pixels High, Red = 2 pixels High)
//Centre index = 47 x coordinate, 15 pixels wide (39-53)
module volume_bar(input [6:0] x, y, input clock, onOff, input [3:0] volume, output reg [1:0]check = 0, input blink_clock, mode_low, mode_med, mode_high, customColour);

    //All Flags used
    reg flag0 = 0;
    reg flag1 = 0;
    reg flag2 = 0;
    reg flag3 = 0;
    reg flag4 = 0;
    reg flag5 = 0;
    reg flag6 = 0;
    reg flag7 = 0;
    reg flag8 = 0;
    reg flag9 = 0;
    reg flag10 = 0;
    reg flag11 = 0;
    reg flag12 = 0;
    reg flag13 = 0;
    reg flag14 = 0;
    reg flag15 = 0;
    reg [1:0] low_volume = 0, medium_volume = 0, high_volume = 0;
    
    always @ (posedge clock)
    begin
        //Reset all the flags at start of each clock edge
        flag0 = 0;
        flag1 = 0;
        flag2 = 0;
        flag3 = 0;
        flag4 = 0;
        flag5 = 0;
        flag6 = 0;
        flag7 = 0;
        flag8 = 0;
        flag9 = 0;
        flag10 = 0;
        flag11 = 0;
        flag12 = 0;
        flag13 = 0;
        flag14 = 0;
        flag15 = 0;
        low_volume = 0;
        medium_volume = 0;
        high_volume = 0;
        
        //Volume Bar Enabled
        if(onOff == 1) 
        begin
            //High Volume
            if((volume >= 15) && ((y >= 3 && y <= 4) && (x >= 39 && x <= 53))) //Volume 15
            begin
                flag15 = 1;
            end    
            if((volume >= 14) && ((y >= 6 && y <= 7) && (x >= 39 && x <= 53))) //Volume 14
            begin
                flag14 = 1;
            end                        
            if((volume >= 13) && ((y >= 9 && y <= 10) && (x >= 39 && x <= 53))) //Volume 13
            begin
                flag13 = 1;
            end
            if((volume >= 12) && ((y >= 12 && y <= 13) && (x >= 39 && x <= 53))) //Volume 12
            begin
                flag12 = 1;
            end
            if((volume >= 11) && ((y >= 15 && y <= 16) && (x >= 39 && x <= 53))) //Volume 11
            begin
                flag11 = 1;
            end
            
            //Medium Volumes
            if((volume >= 10) && ((y >= 18 && y <= 20) && (x >= 39 && x <= 53))) //Volume 10
            begin
                flag10 = 1;
            end
            if((volume >= 9) && ((y >= 22 && y <= 24) && (x >= 39 && x <= 53))) //Volume 9
            begin
                flag9 = 1;
            end
            if((volume >= 8) && ((y >= 26 && y <= 28) && (x >= 39 && x <= 53))) //Volume 8
            begin
                flag8 = 1;
            end
            if((volume >= 7) && ((y >= 30 && y <= 32) && (x >= 39 && x <= 53))) //Volume 7
            begin
                flag7 = 1;
            end
            if((volume >= 6) && ((y >= 34 && y <= 36) && (x >= 39 && x <= 53))) //Volume 6
            begin
                flag6 = 1;
            end
            
            //Low Volumes
            if((volume >= 5) && ((y >= 38 && y <= 40) && (x >= 39 && x <= 53))) //Volume 5
            begin
                flag5 = 1;
            end
            if((volume >= 4) && ((y >= 42 && y <= 44) && (x >= 39 && x <= 53))) //Volume 4
            begin
                flag4 = 1;
            end
            if((volume >= 3) && ((y >= 46 && y <= 48) && (x >= 39 && x <= 53))) //Volume 3
            begin
                flag3 = 1;
            end
            if((volume >= 2) && ((y >= 50 && y <= 52) && (x >= 39 && x <= 53))) //Volume 2
            begin
                flag2 = 1;
            end
            if((volume >= 1) && ((y >= 54 && y <= 56) && (x >= 39 && x <= 53))) //Volume 1
            begin
                flag1 = 1;
            end
            if((volume >= 0) && ((y >= 58 && y <= 60) && (x >= 39 && x <= 53))) //Volume 0
            begin
                flag0 = 1;
            end
            
            //Determining output of colour flag 
            if(flag0 == 0 && flag1 == 0 && flag2 == 0 && flag3 == 0 && flag4 == 0 && flag5 == 0) 
                low_volume = 0;
            else
                low_volume = 1;
            
            if(flag6 == 0 && flag7 == 0 && flag8 == 0 && flag9 == 0 && flag10 == 0)
                medium_volume = 0;
            else
                medium_volume = 1;
                
            if(flag11 == 0 && flag12 == 0 && flag13 == 0 && flag14 == 0 && flag15 == 0)
                high_volume = 0;
            else
                high_volume = 1;
                
            //Blinking mode for custom mode
            if(customColour == 1 && (mode_low == 1 && blink_clock == 0))
            begin
                if(low_volume == 1)
                    low_volume = 0;
            end
            if(customColour == 1 && (mode_med == 1 && blink_clock == 0))
            begin
                if(medium_volume == 1)
                    medium_volume = 0;
            end
            if(customColour == 1 && (mode_high == 1 && blink_clock == 0))
            begin
                if(high_volume == 1)
                    high_volume = 0;
            end
                
            //Assigning output value for colour multiplexer
            check = (high_volume) ? 2'd3 : (medium_volume) ? 2'd2 : (low_volume) ? 2'd1 : 0;  
        end
        
        //Volume Bar Disabled
        else if(onOff == 0) 
            check = 0;    
    end
endmodule
