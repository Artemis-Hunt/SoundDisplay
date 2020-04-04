`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2020 15:04:21
// Design Name: 
// Module Name: string_driver
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


module string_driver(input slowclk, input reset, input [32*8:1] string, input [5:0] length, output reg [7:0]char0, char1, char2, char3);
    reg [10:0] counter = 0;
    reg [8:0] i;
    
    
    always @ (posedge slowclk, posedge reset) begin
        if(reset) begin
            counter <= 0;
            i <= length * 8;
        end
        else begin
            if(counter == 0) i <= length * 8;
            counter <= counter + 1;
            char3 <= string[(i-0*8) -: 8];
            char2 <= (length >= 2) ? string[(i-1*8) -: 8] : " ";
            char1 <= (length >= 3) ? string[(i-2*8) -: 8] : " ";
            char0 <= (length >= 4) ? string[(i-3*8) -: 8] : " ";
            if (i > 4*8) i <= (counter > 3) ? i - 8 : i;
            else counter <=0;
        end
    end

endmodule
