`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2020 22:42:43
// Design Name: 
// Module Name: single_pulse
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


module single_pulse(input clock, button, output singlePulse);

    wire output1, output2;
    
    single_dff dff1(clock, button, output1);
    single_dff dff2(clock, output1, output2);
    
    assign singlePulse = output1 & ~output2;
endmodule
