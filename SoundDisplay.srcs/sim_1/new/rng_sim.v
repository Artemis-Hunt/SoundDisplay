`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 22:26:50
// Design Name: 
// Module Name: rng_sim
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


module rng_sim();

    reg clock = 1, reset = 0;
    wire [12:0] random;
    
    randomNumber rng(clock, reset, random);
    
    always begin
        #5 clock = ~clock;
    end
    

endmodule
