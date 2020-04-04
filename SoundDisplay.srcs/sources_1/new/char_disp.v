`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 15:53:52
// Design Name: 
// Module Name: char_disp
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


module char_disp(input [7:0] char, output reg [7:0] seg);

    always @ * begin
        case(char)
            4'd0: seg = 8'b11000000;
            4'd1: seg = 8'b11111001;
            4'd2: seg = 8'b10100100;
            4'd3: seg = 8'b10110000;
            4'd4: seg = 8'b10011001;
            4'd5: seg = 8'b10010010;
            4'd6: seg = 8'b10000010;
            4'd7: seg = 8'b11111000;
            4'd8: seg = 8'b10000000;
            4'd9: seg = 8'b10010000;
            "A": seg = 8'b10001000;
            "B": seg = 8'b10000011;
            "C": seg = 8'b11000110;
            "D": seg = 8'b10100001;
            "E": seg = 8'b10000110;
            "F": seg = 8'b10001110;
            "G": seg = 8'b10010000;
            "H": seg = 8'b10001001;
            "I": seg = 8'b11001111;
            "J": seg = 8'b11100001;
            "K": seg = 8'b10001001;
            "L": seg = 8'b11000111;
            "M": seg = 8'b11101010;
            "N": seg = 8'b10101011;
            "O": seg = 8'b11000000;
            "P": seg = 8'b10001100;
            "Q": seg = 8'b10011000;
            "R": seg = 8'b10101111;
            "S": seg = 8'b10010010;
            "T": seg = 8'b10000111;
            "U": seg = 8'b11000001;
            "V": seg = 8'b11100011;
            "W": seg = 8'b11010101;
            "X": seg = 8'b10001001;
            "Y": seg = 8'b10010001;
            "Z": seg = 8'b10100100;
            "-": seg = 8'b10111111;
            default: seg = 8'b11111111;
        endcase
    end
endmodule
