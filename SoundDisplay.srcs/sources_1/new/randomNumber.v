`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 16:15:44
// Design Name: 
// Module Name: randomNumber
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
//Source: http://simplefpga.blogspot.com/2013/02/random-number-generator-in-verilog-fpga.html
//Pseudo-random number generator using LFSR

module randomNumber (input clock, input reset, output [12:0] rnd);
 
    reg [12:0] random = 0 , random_next = 12'hA5E, random_done = 0;
    reg [3:0] count = 0, count_next = 0; //to keep track of the shifts
    
    wire feedback = random[12] ^ random[3] ^ random[2] ^ random[0]; 
 
    always @ (posedge clock or posedge reset)
    begin
        if (reset)
        begin
            random <= 13'hFFF; //An LFSR cannot have an all 0 state, thus reset to FF
            count <= 0;
        end
        else
        begin
            random <= random_next;
            count <= count_next;
        end
    end
 
    always @ (*)
    begin
        random_next = random; //default state stays the same
        count_next = count;
   
        random_next = {random[11:0], feedback}; //shift left the xor'd every posedge clock
        count_next = count + 1;
        
        count = (count == 13) ? 0 : count;
        if (count == 0)
        begin
            random_done = random; //assign the random number to output after 13 shifts
        end 
    end

    assign rnd = random_done;
 
endmodule