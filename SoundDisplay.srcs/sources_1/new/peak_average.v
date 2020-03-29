`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 15:36:13
// Design Name: 
// Module Name: peak_average
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
//Module to calculate the peak and average sound. Mic input = 20Hz, refresh update every second = 1Hz

module peak_average(input [3:0] mic_volume, input button_clock, input reset);

    reg [4:0] count = 0;
    reg [3:0] peak = 0;
    reg [3:0] average = 0;
    reg [8:0] max_total = 0;
    parameter DIVISOR = 20;
    
    always @ (posedge button_clock)
    begin
        if(reset == 1)
        begin
            peak = 0;
            count = 0;
            max_total = 0;
        end
        
        //Determine Peak
        if(mic_volume > peak)
            peak = mic_volume;
        
        //Calculate Average over 20 counts of mic input    
        count = count + 1;
        max_total = max_total + mic_volume;
        
        if(count == 20)
        begin
            average = max_total / DIVISOR;
            count = 0;
        end
    end
endmodule
