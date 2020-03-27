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
    reg counter = 0;
    integer i = 1;
   
    
    always @ (posedge slowclk, posedge reset) begin
        if(reset) begin
            counter = 0;
            i = 1;
        end
        else begin
            counter <= counter + 1;
            if(length < 4) begin
                char3 <= " ";
                char2 <= (length >= 3) ? string[24:17] : " ";
                char1 <= (length >= 2) ? string[16:9] : " ";
                char0 <= string [8:1];
            end
            else if(i <= (length - 3)) begin
                char3 <= string[(i+3*8) +: 8];
                char2 <= string[(i+2*8) +: 8];
                char1 <= string[(i+1*8) +: 8];
                char0 <= string[(i+0*8) +: 8];
                i <= (counter > 4) ? i + 1 : i;
            end
        end
    end

endmodule
