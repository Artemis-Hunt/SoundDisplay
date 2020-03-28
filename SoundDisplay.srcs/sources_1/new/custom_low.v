`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2020 20:20:05
// Design Name: 
// Module Name: custom_border
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


module custom_low(input clock361Hz, button_clock, blink_clock, input mid_sel, right_sel, left_sel, up_sel, down_sel, 
                        input custom_flag, input enable, output reg [3:0] an, output reg [7:0] seg, output reg [15:0]custom_colour);

    reg [2:0] an_pointer = 0;
    reg [3:0] number0 = 0;
    reg [3:0] number1 = 9;  
    reg [3:0] number2 = 1;
    reg [3:0] number3 = 4;
    wire [7:0] segX [3:0];
    reg [2:0] counter = 0;
    wire [3:0] RGB [3:0];
      
    colourHex_disp disp0(number0, segX[0], RGB[0]);
    colourHex_disp disp1(number1, segX[1], RGB[1]);
    colourHex_disp disp2(number2, segX[2], RGB[2]);
    colourHex_disp disp3(number3, segX[3], RGB[3]);
    
    always @ (posedge button_clock)
    begin
        if(custom_flag == 1 && enable == 1) //Start button inputs when in custom mode and at its item
        begin  
            if(right_sel == 1) an_pointer <= (an_pointer == 3) ? 3: an_pointer + 1;
            if(left_sel == 1) an_pointer <= (an_pointer == 0) ? 0 : an_pointer - 1;
            if(up_sel == 1) //Scroll in upward direction
            begin
                if(an_pointer == 0) number0 <= (number0 == 15) ? 0 : number0 + 1;
                if(an_pointer == 1) number1 <= (number1 == 15) ? 0 : number1 + 1;
                if(an_pointer == 2) number2 <= (number2 == 15) ? 0 : number2 + 1;
                if(an_pointer == 3) number3 <= (number3 == 15) ? 0 : number3 + 1;
            end   
            if(down_sel == 1) //Scroll in downward direction
            begin
                if(an_pointer == 0) number0 <= (number0 == 0) ? 15 : number0 - 1;
                if(an_pointer == 1) number1 <= (number1 == 0) ? 15 : number1 - 1;
                if(an_pointer == 2) number2 <= (number2 == 0) ? 15 : number2 - 1;
                if(an_pointer == 3) number3 <= (number3 == 0) ? 15 : number3 - 1;
            end
        end
    end
    
    always @ *
    begin
        custom_colour[15:12] <= RGB[0];
        custom_colour[11:8] <= RGB[1];
        custom_colour[7:4] <= RGB[2];
        custom_colour[3:0] <= RGB[3];
    end
    
    always @ (posedge clock361Hz)
    begin
        counter <= counter + 1;
        if(counter == 3)
            counter <= 0;
            
        case(counter) //Display on screen
        3'd0:
        begin
            seg <= segX[0];
            if(blink_clock == 1 && an_pointer == 0)
                an <= 4'b1111;
            else
                an <= 4'b0111;
        end
        3'd1:
        begin
            seg <= segX[1];
            if(blink_clock == 1 && an_pointer == 1)
                an <= 4'b1111;
            else
                an <= 4'b1011;
        end
        3'd2:
        begin
            seg <= segX[2];
            if(blink_clock == 1 && an_pointer == 2)
                an <= 4'b1111;
            else
                an <= 4'b1101;
        end
        3'd3:
        begin
            seg <= segX[3];
            if(blink_clock == 1 && an_pointer == 3)
                an <= 4'b1111;
            else
                an <= 4'b1110;
        end
        endcase
    end
    
endmodule
