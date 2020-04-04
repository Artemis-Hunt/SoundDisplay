`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2020 20:23:51
// Design Name: 
// Module Name: rotate_check
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


module collision_check(input [48:1] static_blocks, input [48:1] temp_blocks, input [48:1] current_blocks, output reg shifted);
    always @ (temp_blocks)
        shifted = ((static_blocks & temp_blocks) == 48'b0);
    //assign new_blocks = (shifted) ? temp_blocks : current_blocks;
endmodule
