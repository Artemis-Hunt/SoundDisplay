`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.03.2020 15:30:49
// Design Name: 
// Module Name: dictionary
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

//Module with the dictionary of words to print on the screen
module dictionary(input clock, input [6:0] x, y, text_x, text_y, input [4:0] letter_code, output reg check = 0);

    reg flag;
    
    always @ (posedge clock)
    begin
        check = 0;
        if((((x >= text_x && x <= (text_x + 4)) && (y == text_y)) || ((x == text_x) && (y >= text_y && y <= (text_y + 6)))
            || ((x >= text_x && x <= (text_x + 2)) && y == text_y + 3) || ((x >= text_x && x <= (text_x + 4)) && y == text_y + 6)) && letter_code == 5) //Print E
            check = 1;
        else if((((x >= text_x && x <= (text_x + 4)) && y == text_y) || ((x == text_x + 2) && (y >= text_y && y <= (text_y + 6)))) && letter_code == 20) //Print T
            check = 1;
            
        else if((((x == text_x + 2) && ((y >= text_y + 2) && y <= (text_y + 6))) || ((x == text_x || x == (text_x + 4)) && (y == text_y))
                || (((x == text_x + 1) || (x == text_x + 3)) && (y == text_y + 1))) && letter_code == 25) //Print Y
            check = 1;
        else 
            check = 0;
    end
endmodule
