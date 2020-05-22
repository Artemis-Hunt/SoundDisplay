`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.04.2020 17:20:29
// Design Name: 
// Module Name: logo_watch
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

module logo_watch(input clock, input [6:0] currX, currY, startY, output reg pixel);
    parameter STARTX = 2, ENDX = 18, LOGO_HEIGHT = 16;
    reg [6:0] index = 0, row = 0;
    wire [256:1] logo;
    assign logo = 256'h0000000003F807FC0C06D803D803F863F863D883D9030C0607FC03F800000000;
    always @ (posedge clock) begin
        if(currX >= STARTX && currX <= ENDX && currY >= startY && (currY - startY) < LOGO_HEIGHT) begin
            row = currY - startY; index = currX - STARTX;
            pixel = logo[256 - row - index*LOGO_HEIGHT];
        end
        else begin pixel = 0; row = 0; index = 0; end
    end
endmodule