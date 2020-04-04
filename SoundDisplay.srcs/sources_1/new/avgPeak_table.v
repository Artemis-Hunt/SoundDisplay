`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2020 16:52:17
// Design Name: 
// Module Name: avgPeak_table
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


module avgPeak_table(input clock, input [3:0] selection, output reg [120:1] number);

    always @ (posedge clock)
    begin
        case(selection)
        4'd0: number = 120'h202020202020203020202020202020;
        4'd1: number = 120'h202020202020203120202020202020;
        4'd2: number = 120'h202020202020203220202020202020;
        4'd3: number = 120'h202020202020203320202020202020;
        4'd4: number = 120'h202020202020203420202020202020;
        4'd5: number = 120'h202020202020203520202020202020;
        4'd6: number = 120'h202020202020203620202020202020;
        4'd7: number = 120'h202020202020203720202020202020;
        4'd8: number = 120'h202020202020203820202020202020;
        4'd9: number = 120'h202020202020203920202020202020;
        4'd10: number = 120'h202020202020203130202020202020;
        4'd11: number = 120'h202020202020203131202020202020;
        4'd12: number = 120'h202020202020203132202020202020;
        4'd13: number = 120'h202020202020203133202020202020;
        4'd14: number = 120'h202020202020203134202020202020;
        4'd15: number = 120'h202020202020203135202020202020;
        endcase
    end
endmodule
