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
        4'd0: number = 8'h30;
        4'd1: number = 8'h31;
        4'd2: number = 8'h32;
        4'd3: number = 8'h33;
        4'd4: number = 8'h34;
        4'd5: number = 8'h35;
        4'd6: number = 8'h36;
        4'd7: number = 8'h37;
        4'd8: number = 8'h38;
        4'd9: number = 8'h39;
        4'd10: number = 16'h3130;
        4'd11: number = 16'h3131;
        4'd12: number = 16'h3132;
        4'd13: number = 16'h3133;
        4'd14: number = 16'h3134;
        4'd15: number = 16'h3135;
        endcase
    end
endmodule
