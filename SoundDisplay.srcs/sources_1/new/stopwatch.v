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
//Switch 9 to turn on, switch 8 to pause, middle_button to start, down_button to reset, works in background 
module stopwatch(input button_clock, clk1Hz, enable, reset, start, output [7:0] minuteTens, minute, secondTens, second);

    reg [31:0] second_count = 0;
    reg [4:0] second_tens_count = 0;
    reg [5:0] minute_count = 0;
    reg [4:0] minute_tens_count = 0;
    reg start_flag = 0;
    reg [4:0]seconds = 0;
    reg [4:0] minutes = 0;
    reg pause = 0;
    
    //Button operations
    always @ (posedge button_clock)
    begin
        if(enable == 1)
        begin
            if(start == 1) begin
                if(start_flag == 1) pause = ~pause;
                start_flag = 1;
            end
            if(reset == 1) begin
                start_flag = 0;
                pause = 0;
            end
        end     
    end
    
    //Second clock
    always @ (posedge clk1Hz or posedge reset)
    begin
        if(reset == 1) //Reset stopwatch
        begin
            second_count = 0;
            minute_count = 0;
            minute_tens_count = 0;
            second_tens_count = 0;
            seconds = 0;
            minutes = 0;
        end
        else
        begin
            if(start_flag == 1 && pause == 0)
                second_count = second_count + 1;
            
            if(second_count == 3600) //Hold at max count
                second_count = 3600;
                
            seconds = second_count % 10; //Dislay seconds 0 - 9
            
            if((second_count != 0) && ((second_count % 10) == 0)) //Every 10 second, update the tenths count
                second_tens_count = second_tens_count + 1;
            if(second_tens_count == 6) //Every 60 seconds = 1 minute
            begin
                second_tens_count = 0;
                minute_count = minute_count + 1;
            end
            
            minutes = minute_count % 10; //Display minute
            
            minute_tens_count = minute_count/10;   
             
            if(minute_count >= 60)
                minute_count = 0;
        end 
    end
    
    //Output 7-seg
    char_disp minute_tens_pos(minute_tens_count, minuteTens);
    char_disp minute_pos(minutes, minute);
    char_disp second_tens_pos(second_tens_count, secondTens);
    char_disp second_pos(seconds, second);
    
endmodule
