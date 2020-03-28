`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 21:49:46
// Design Name: 
// Module Name: draw_border
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

//X coordinates present CURRENT coordinates, Y is correct, update colour for following coordinate
module draw_border(input [6:0] x, y, input clock, input switch, input onOff, output reg check, input blink_clock, input custom_mode, blink_enable);
        
    always @ (posedge clock)
    begin
        if(onOff == 1) //Component Turned on
        begin
            if(switch == 0) //1 Pixel wide Border
            begin
                if((x >= 0 && x <= 95) && (y == 0 || y == 63)) //Across
                    check = 1;
                else if((x == 95 || x == 94) && (y >= 0 && y <= 63)) //Vertical
                    check = 1;
                else
                    check = 0;     
            end
            else if (switch == 1) //3 Pixel Wide Border
            begin
                if((x >= 0 && x <= 95) && ((y >= 0 && y <= 2) || (y >= 61 && y <= 63))) //Across
                    check = 1;
                else if((((x >= 0 && x <= 1) || x == 95) || (x >= 92 && x <= 94)) && (y >= 0 && y <= 63)) //Vertical
                    check = 1;
                else 
                    check = 0;
            end
            
            //Custom mode blinking border
            if((custom_mode == 1 && blink_clock == 1) && (blink_enable == 1))
            begin
                if(check == 1)
                    check = 0;
            end
        end
        else if(onOff == 0)// Component Turned off
            check = 0;
    end
endmodule
