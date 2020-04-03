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

module peak_average(input [3:0] mic_volume, input clk625MHz, button_clock, input reset, input [2:0]mode, input [6:0] currX, currY, output [15:0] color_out);

    reg [4:0] count = 0;
    reg [3:0] peak = 0;
    reg [3:0] average = 0;
    reg [8:0] max_total = 0;
    parameter DIVISOR = 20;
    
    wire textPlain, textBlue1, textBlue, textColor, textPeak, textAverage;
    wire [120:1] peakIn, averageIn;
    
    str_oled volume_info(clk625MHz, currX, currY, 8, "  VOLUME INFO  ", textPlain);
    str_oled peak_info(clk625MHz, currX, currY, 20, "     PEAK      ", textBlue1);
    str_oled peakNumber(clk625MHz, currX, currY, 29, peakIn, textPeak);
    str_oled average_info(clk625MHz, currX, currY, 35, "     AVERAGE    ", textBlue);
    str_oled avgNumber(clk625MHz, currX, currY, 44, averageIn, textAverage);
    
    avgPeak_table peakTable(button_clock, peak, peakIn );
    avgPeak_table avgTable(button_clock, average, averageIn);
    
    assign color_out = ((textPeak == 1 && (peak > 10  && peak <= 15)) || (textAverage == 1 && (average > 10 && average <= 15))) ? 16'hF800 : ((textPeak == 1 && (peak > 5  && peak <= 10)) || 
                        (textAverage == 1 && (average > 5 && average <= 10))) ? 16'hFFE0 : ((textPeak == 1 && (peak >= 0 && peak <= 5)) || (textAverage == 1 && (average >= 0 && average <= 5))) 
                        ? 16'h5FE0 : (textBlue1) ? 16'h073F : (textBlue) ? 16'h073F : (textPlain) ? 16'hFFFF : 16'h0000;
    
    always @ (posedge button_clock)
    begin
        if(reset == 1 && mode == 4)
        begin
            peak = 0;
            count = 0;
            average = 0;
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
            max_total = 0;
            count = 0;
        end
    end
endmodule
