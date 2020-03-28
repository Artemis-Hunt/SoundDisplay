`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2020 20:32:51
// Design Name: 
// Module Name: colourHex_disp
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


module colourHex_disp(input [3:0] index, output reg [7:0] seg, output reg [3:0] RGB);

    always @ * begin
        case(index)
            4'd0: begin seg <= 8'b11000000; RGB <= 4'b0000; end
            4'd1: begin seg <= 8'b11111001; RGB <= 4'b0001; end
            4'd2: begin seg <= 8'b10100100; RGB <= 4'b0010; end
            4'd3: begin seg <= 8'b10110000; RGB <= 4'b0011; end
            4'd4: begin seg <= 8'b10011001; RGB <= 4'b0100; end
            4'd5: begin seg <= 8'b10010010; RGB <= 4'b0101; end
            4'd6: begin seg <= 8'b10000010; RGB <= 4'b0110; end
            4'd7: begin seg <= 8'b11111000; RGB <= 4'b0111; end
            4'd8: begin seg <= 8'b10000000; RGB <= 4'b1000; end
            4'd9: begin seg <= 8'b10010000; RGB <= 4'b1001; end
            4'd10: begin seg <= 8'b10001000; RGB <= 4'b1010; end
            4'd11: begin seg <= 8'b10000011; RGB <= 4'b1011; end
            4'd12: begin seg <= 8'b11000110; RGB <= 4'b1100; end
            4'd13: begin seg <= 8'b10100001; RGB <= 4'b1101; end
            4'd14: begin seg <= 8'b10000110; RGB <= 4'b1110; end
            4'd15: begin seg <= 8'b10001110; RGB <= 4'b1111; end
        endcase
    end
endmodule
