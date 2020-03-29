`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.03.2020 21:34:13
// Design Name: 
// Module Name: stopwatch
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

//Stopwatch module that counts to 60 mins
module stopwatch(input button_clock, clk1Hz, enable, reset, start, pause, output [7:0] minuteTens, minute, secondTens, second);

    reg [31:0] second_count = 0;
    reg [4:0] second_tens_count = 0;
    reg [5:0] minute_count = 0;
    reg [4:0] minute_tens_count = 0;
    reg start_flag = 0;
    reg [4:0]seconds = 0;
    reg [4:0] minutes = 0;
    
    //Button operations
    always @ (posedge button_clock)
    begin
        if(enable == 1)
        begin
            if(start == 1)
                start_flag <= 1;
            if(reset == 1)
                start_flag <= 0;
        end     
    end
    
    //Second clock
    always @ (posedge clk1Hz or posedge reset)
    begin
        if(reset == 1) //Reset stopwatch
        begin
            second_count <= 0;
            minute_count <= 0;
            minute_tens_count <= 0;
            second_tens_count <= 0;
        end
        else
        begin
            if(start_flag == 1 && pause == 0)
                second_count <= second_count + 1;
        
            if(second_count == 3601) //Hold value when maxed out
                second_count <= 3601;
            
            if((second_count % 60 == 0) && (start_flag == 1 && pause == 0)) //Calculate minutes
                minute_count <= minute_count + 1;
        
            if(minute_count % 10 == 0) //10 minute blocks
                minute_tens_count <= minute_tens_count + 1;
            
            if(second_count % 10 == 0) //10 second blocks
                second_tens_count <= second_tens_count + 1;
            if(second_tens_count == 6)
                second_tens_count <= 0;
                
            seconds <= second_count % 10;
            minutes <= minute_count % 10;
        end
    end
    
    //Output 7-seg
    stopwatch_output minute_tens_pos(minute_tens_count, minuteTens);
    stopwatch_output minute_pos(minutes, minute);
    stopwatch_output second_tens_pos(second_tens_count, secondTens);
    stopwatch_output second_pos(seconds, second);
    
endmodule
