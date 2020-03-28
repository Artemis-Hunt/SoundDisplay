`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.03.2020 15:48:30
// Design Name: 
// Module Name: ledDriv
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


module ledDriv(input CLOCK, input [7:0] sig0, sig1, sig2, sig3, output reg [7:0] seg, output reg [3:0] an = 4'b1110);
    wire ledclock;
    clk clk600(CLOCK, 83_333, ledclock);
    
    always @(posedge ledclock) begin
        an = (an == 4'b0111) ? 4'b1110 : ~((~an) << 1);
        case(an)
            4'b1110: seg = sig0;
            4'b1101: seg = sig1;
            4'b1011: seg = sig2;
            4'b0111: seg = sig3;
        endcase
    end
endmodule
