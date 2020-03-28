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


module custom_high(input clock361Hz, button_clock, blink_clock, input mid_sel, right_sel, left_sel, up_sel, down_sel, 
                        input custom_flag, input enable, output reg [3:0] an, output reg [7:0] seg, output reg [15:0]custom_colour);

    reg [2:0] an_pointer = 0;
    reg [3:0] number0 = 15;
    reg [3:0] number1 = 13;  
    reg [3:0] number2 = 6;
    reg [3:0] number3 = 0;
    reg [7:0] seg0 = 8'b10001110;
    reg [7:0] seg1 = 8'b10100001;
    reg [7:0] seg2 = 8'b10000010;
    reg [7:0] seg3 = 8'b11000000;
    reg [2:0] counter = 0;
    reg [3:0] RGB0 = 15;
    reg [3:0] RGB1 = 13;
    reg [3:0] RGB2 = 6;
    reg [3:0] RGB3 = 0;
    
    always @ (posedge button_clock)
    begin
        if(custom_flag == 1 && enable == 1) //Start button inputs when in custom mode and at its item
        begin  
            if(right_sel == 1) //Move Anode right
            begin
                if(an_pointer == 3)
                    an_pointer <= 3;
                else
                    an_pointer <= an_pointer + 1;
            end
            
            if(left_sel == 1) //Move anode left
            begin
                if(an_pointer == 0)
                    an_pointer <= 0;
                else
                    an_pointer <= an_pointer - 1;
            end
                    
            if(up_sel == 1) //Scroll in upward direction
            begin
                if(an_pointer == 0)
                begin
                    if(number0 == 15)
                        number0 <= 0;
                    else
                        number0 <= number0 + 1;
                end
                if(an_pointer == 1)
                begin
                    if(number1 == 15)
                        number1 <= 0;
                    else
                        number1 <= number1 + 1;
                end
                if(an_pointer == 2)
                begin
                    if(number2 == 15)
                        number2 <= 0;
                    else
                        number2 <= number2 + 1;
                end
                if(an_pointer == 3)
                begin
                    if(number3 == 15)
                        number3 <= 0;
                    else
                        number3 <= number3 + 1;
                end
            end   
            if(down_sel == 1) //Scroll in downward direction
            begin
                if(an_pointer == 0)
                begin
                    if(number0 == 0)
                        number0 <= 15;
                    else
                        number0 <= number0 - 1;
                end
                if(an_pointer == 1)
                begin
                    if(number1 == 0)
                        number1 <= 15;
                    else
                        number1 <= number1 - 1;
                end
                if(an_pointer == 2)
                begin
                    if(number2 == 0)
                        number2 <= 15;
                    else
                        number2 <= number2 - 1;
                end
                if(an_pointer == 3)
                begin
                    if(number3 == 0)
                        number3 <= 15;
                    else
                        number3 <= number3 - 1;
                end
            end
        end
    end
    
    always @ (posedge clock361Hz)
    begin
        case (an_pointer)
        2'd0:
        begin
            case(number0)
            4'd0: begin seg0 <= 8'b11000000; RGB0 <= 4'b0000; end
            4'd1: begin seg0 <= 8'b11111001; RGB0 <= 4'b0001; end
            4'd2: begin seg0 <= 8'b10100100; RGB0 <= 4'b0010; end
            4'd3: begin seg0 <= 8'b10110000; RGB0 <= 4'b0011; end
            4'd4: begin seg0 <= 8'b10011001; RGB0 <= 4'b0100; end
            4'd5: begin seg0 <= 8'b10010010; RGB0 <= 4'b0101; end
            4'd6: begin seg0 <= 8'b10000010; RGB0 <= 4'b0110; end
            4'd7: begin seg0 <= 8'b11111000; RGB0 <= 4'b0111; end
            4'd8: begin seg0 <= 8'b10000000; RGB0 <= 4'b1000; end
            4'd9: begin seg0 <= 8'b10010000; RGB0 <= 4'b1001; end
            4'd10: begin seg0 <= 8'b10001000; RGB0 <= 4'b1010; end
            4'd11: begin seg0 <= 8'b10000011; RGB0 <= 4'b1011; end
            4'd12: begin seg0 <= 8'b11000110; RGB0 <= 4'b1100; end
            4'd13: begin seg0 <= 8'b10100001; RGB0 <= 4'b1101; end
            4'd14: begin seg0 <= 8'b10000110; RGB0 <= 4'b1110; end
            4'd15: begin seg0 <= 8'b10001110; RGB0 <= 4'b1111; end
            endcase
        end
        2'd1:
        begin
            case(number1)
            4'd0: begin seg1 <= 8'b11000000; RGB1 <= 4'b0000; end
            4'd1: begin seg1 <= 8'b11111001; RGB1 <= 4'b0001; end
            4'd2: begin seg1 <= 8'b10100100; RGB1 <= 4'b0010; end
            4'd3: begin seg1 <= 8'b10110000; RGB1 <= 4'b0011; end
            4'd4: begin seg1 <= 8'b10011001; RGB1 <= 4'b0100; end
            4'd5: begin seg1 <= 8'b10010010; RGB1 <= 4'b0101; end
            4'd6: begin seg1 <= 8'b10000010; RGB1 <= 4'b0110; end
            4'd7: begin seg1 <= 8'b11111000; RGB1 <= 4'b0111; end
            4'd8: begin seg1 <= 8'b10000000; RGB1 <= 4'b1000; end
            4'd9: begin seg1 <= 8'b10010000; RGB1 <= 4'b1001; end
            4'd10: begin seg1 <= 8'b10001000; RGB1 <= 4'b1010; end
            4'd11: begin seg1 <= 8'b10000011; RGB1 <= 4'b1011; end
            4'd12: begin seg1 <= 8'b11000110; RGB1 <= 4'b1100; end
            4'd13: begin seg1 <= 8'b10100001; RGB1 <= 4'b1101; end
            4'd14: begin seg1 <= 8'b10000110; RGB1 <= 4'b1110; end
            4'd15: begin seg1 <= 8'b10001110; RGB1 <= 4'b1111; end
            endcase
        end       
        2'd2:
        begin
            case(number2)
            4'd0: begin seg2 <= 8'b11000000; RGB2 <= 4'b0000; end
            4'd1: begin seg2 <= 8'b11111001; RGB2 <= 4'b0001; end
            4'd2: begin seg2 <= 8'b10100100; RGB2 <= 4'b0010; end
            4'd3: begin seg2 <= 8'b10110000; RGB2 <= 4'b0011; end
            4'd4: begin seg2 <= 8'b10011001; RGB2 <= 4'b0100; end
            4'd5: begin seg2 <= 8'b10010010; RGB2 <= 4'b0101; end
            4'd6: begin seg2 <= 8'b10000010; RGB2 <= 4'b0110; end
            4'd7: begin seg2 <= 8'b11111000; RGB2 <= 4'b0111; end
            4'd8: begin seg2 <= 8'b10000000; RGB2 <= 4'b1000; end
            4'd9: begin seg2 <= 8'b10010000; RGB2 <= 4'b1001; end
            4'd10: begin seg2 <= 8'b10001000; RGB2 <= 4'b1010; end
            4'd11: begin seg2 <= 8'b10000011; RGB2 <= 4'b1011; end
            4'd12: begin seg2 <= 8'b11000110; RGB2 <= 4'b1100; end
            4'd13: begin seg2 <= 8'b10100001; RGB2 <= 4'b1101; end
            4'd14: begin seg2 <= 8'b10000110; RGB2 <= 4'b1110; end
            4'd15: begin seg2 <= 8'b10001110; RGB2 <= 4'b1111; end
            endcase
        end 
        2'd3:
        begin
            case(number3)
            4'd0: begin seg3 <= 8'b11000000; RGB3 <= 4'b0000; end
            4'd1: begin seg3 <= 8'b11111001; RGB3 <= 4'b0001; end
            4'd2: begin seg3 <= 8'b10100100; RGB3 <= 4'b0010; end
            4'd3: begin seg3 <= 8'b10110000; RGB3 <= 4'b0011; end
            4'd4: begin seg3 <= 8'b10011001; RGB3 <= 4'b0100; end
            4'd5: begin seg3 <= 8'b10010010; RGB3 <= 4'b0101; end
            4'd6: begin seg3 <= 8'b10000010; RGB3 <= 4'b0110; end
            4'd7: begin seg3 <= 8'b11111000; RGB3 <= 4'b0111; end
            4'd8: begin seg3 <= 8'b10000000; RGB3 <= 4'b1000; end
            4'd9: begin seg3 <= 8'b10010000; RGB3 <= 4'b1001; end
            4'd10: begin seg3 <= 8'b10001000; RGB3 <= 4'b1010; end
            4'd11: begin seg3 <= 8'b10000011; RGB3 <= 4'b1011; end
            4'd12: begin seg3 <= 8'b11000110; RGB3 <= 4'b1100; end
            4'd13: begin seg3 <= 8'b10100001; RGB3 <= 4'b1101; end
            4'd14: begin seg3 <= 8'b10000110; RGB3 <= 4'b1110; end
            4'd15: begin seg3 <= 8'b10001110; RGB3 <= 4'b1111; end
            endcase
        end
        endcase
        custom_colour[15:12] <= RGB0;
        custom_colour[11:8] <= RGB1;
        custom_colour[7:4] <= RGB2;
        custom_colour[3:0] <= RGB3;
    end
    
    always @ (posedge clock361Hz)
    begin
        counter <= counter + 1;
        if(counter == 3)
            counter <= 0;
            
        case(counter) //Display on screen
        3'd0:
        begin
            seg <= seg0;
            if(blink_clock == 1 && an_pointer == 0)
                an <= 4'b1111;
            else
                an <= 4'b0111;
        end
        3'd1:
        begin
            seg <= seg1;
            if(blink_clock == 1 && an_pointer == 1)
                an <= 4'b1111;
            else
                an <= 4'b1011;
        end
        3'd2:
        begin
            seg <= seg2;
            if(blink_clock == 1 && an_pointer == 2)
                an <= 4'b1111;
            else
                an <= 4'b1101;
        end
        3'd3:
        begin
            seg <= seg3;
            if(blink_clock == 1 && an_pointer == 3)
                an <= 4'b1111;
            else
                an <= 4'b1110;
        end
        endcase
    end
    
endmodule
