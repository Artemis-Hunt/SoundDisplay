`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2020 14:40:36
// Design Name: 
// Module Name: text_select
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

//Module to display text on screen
module text_select(input text_clock, input mode, output reg [6:0] x, output reg [6:0] y, output reg [4:0] letter_code = 0);

    reg [6:0] count = 0;
    reg [12:0] pixel_count = 0;
    
    //Module to choose position of where to print text
    always @ (posedge text_clock)
    begin
        count <= count + 1;
        
        if(mode == 1)
        begin
            //Yeet test
            case (count)
            3'd0: //Y
            begin
                x <= 7'd35;
                y <= 7'd3;
                letter_code <= 7'd25;
            end
            3'd1: //E
            begin
                x <= 7'd41;
                y <= 7'd3;
                letter_code <= 7'd5;
            end
            3'd2: //E
            begin
                x <= 7'd47;
                y <= 7'd3;
                letter_code <= 7'd5;
            end
            3'd3: //T
            begin
                x <= 7'd53;
                y <= 7'd3;
                letter_code <= 7'd20;
            end
            endcase
            if(count == 4)
                count <= 0;
        end
    end

    endmodule
