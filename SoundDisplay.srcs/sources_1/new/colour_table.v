`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 17:17:21
// Design Name: 
// Module Name: colour_table
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


module colour_table(input [2:0] colour, output reg [15:0] OLED_colour);
    always @ * begin
        case(colour)
            3'd0: OLED_colour = 16'h07FE;
            3'd1: OLED_colour = 16'h07E4;
            3'd2: OLED_colour = 16'h07FE;
            3'd3: OLED_colour = 16'h07E4;
            3'd4: OLED_colour = 16'h07E4;
            3'd5: OLED_colour = 16'h07E4;
            3'd6: OLED_colour = 16'h07E4;
        endcase
    end
endmodule
