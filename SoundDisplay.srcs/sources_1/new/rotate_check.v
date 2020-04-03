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


module collision_check(input [48:1] static_blocks, input [48:1] temp_blocks, input [48:1] current_blocks, output [48:1] new_blocks, output shifted);
    wire collision;
    assign collision = (static_blocks & temp_blocks == 48'b0) ? 0 : 1;
    assign new_blocks = (collision) ? current_blocks : temp_blocks;
    assign shifted = ~collision;
endmodule
