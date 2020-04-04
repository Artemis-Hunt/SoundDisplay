`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
//
//  FILL IN THE FOLLOWING INFORMATION:
//
//  LAB SESSION DAY (Delete where applicable): MONDAY P.M, TUESDAY P.M, WEDNESDAY P.M, THURSDAY A.M., THURSDAY P.M
//
//  STUDENT A NAME: 
//  STUDENT A MATRICULATION NUMBER: 
//
//  STUDENT B NAME: Danzel Ong Jing Hern
//  STUDENT B MATRICULATION NUMBER: A0199331Y
//
//////////////////////////////////////////////////////////////////////////////////


module Top_Student (
    input  J_MIC3_Pin3,   // Connect from this signal to Audio_Capture.v
    output J_MIC3_Pin1,   // Connect to this signal from Audio_Capture.v
    output J_MIC3_Pin4,    // Connect to this signal from Audio_Capture.v
    input CLK100MHZ,
    output [15:0]led,
    input btnC,
    input btnR,
    input btnL,
    input btnU,
    input btnD,
    input [15:0] sw,
    output [7:0] seg,
    output [3:0] an,
    output [7:0] JC
    );
    
    parameter MIN_VOL = 2000, STEP = 131, MAX_LEN = 32;   //Ambient noise level |||| step size for each discrete volume level |||| Max string length
    wire clk20ksig, clk6p25msig, clk361sig, clk40sig, clk20sig, clk10sig, clk4sig, clk1sig;   //Various clock signals
    wire mid_sel, right_sel, left_sel, up_sel, down_sel;   //Single pulse output from colour select button
    wire frame_begin, sending_pixels, sample_pixels;   // Unused output data
    wire [4:0] teststate;                              //  from OLED
    wire [12:0] pixel_index;   //Index of current pixel being drawn
    wire [15:0] pixel_data, pixel_data_main;   //Colour info to be drawn on next pixel
    wire [11:0] mic_in;   //Microphone data
    wire [15:0] mic_out;   //Multiplexed output directly assigned to LEDs
    wire [3:0] bcd [1:0];   //Actual number to be displayed on 7-seg
    wire [7:0] bcdseg [1:0];   //Segment data for 7-seg display
    reg [15:0] ledBar;   // Data for volume bar, directly assigned to the LEDs
    wire [15:0] ledMic;
    reg [3:0] maxLED = 0;   //Index of the highest LED that should be lit
    reg [11:0] max = 0, mic_raw = 0;   //Peak volume in a given period |||| Raw mic data, updated at 4Hz
    reg [12:0] resetMax = 0;   //Counter for resetting max
    wire [7:0] char [3:0];
    wire [7:0] charseg [3:0];
    wire [7:0] segData [3:0];
    wire [7:0] startChar [3:0];
    wire [7:0] startSegChar [3:0];
    wire [7:0] ecoChar [3:0];
    wire [7:0] ecoSegChar [3:0];
    wire [7:0] shifted_seg, tetris_game_count, buttons_seg, top_left_seg, block_state_seg;
    wire [7:0] customSeg;
    wire [3:0] customAnode;
    wire customFlag;
    wire [7:0] watch0, watch1, watch2, watch3;
    wire [7:0] segY, segF, segDebug, segOut, segStart, segEco;
    wire[3:0] anY, anF, anDebug, anOut, anStart, anEco;
    wire startMode;
    wire [1:0] gamestate;
    integer i, j;   //Loop variables
    
    reg [5:0] ecoCount = 0;
    reg ecoMode = 0;
    
    //Text to be scrolled
    reg [32*8:1] string = "ABD DBA AAC CAD";   //String to be shown on 7-seg
    reg [5:0] length = 15;   //Length of string
    
    //Clock dividers
    clk clk625m(CLK100MHZ, 7, clk6p25msig);
    clk clk20k(CLK100MHZ, 2499, clk20ksig);
    clk clk361(CLK100MHZ, 138503, clk361sig);
    clk clk40(CLK100MHZ, 1_249_999, clk40sig);
    clk clk20(CLK100MHZ, 2_499_999, clk20sig); 
    clk clk10(CLK100MHZ, 4_999_999, clk10sig);
    clk clk4(CLK100MHZ, 12_499_999, clk4sig);
    clk clk1(CLK100MHZ, 49_999_999, clk1sig);

    //Single pulse debouncing for pushbuttons
    single_pulse mid(clk20sig, btnC, mid_sel);
    single_pulse right(clk20sig, btnR, right_sel);
    single_pulse left(clk20sig, btnL, left_sel);
    single_pulse up(clk20sig, btnU, up_sel);
    single_pulse down(clk20sig, btnD, down_sel);
    
    //Multiplexer between raw mic data and peak volume meter
    mux1 mux0({4'b0,mic_raw}, ledBar, sw[0], mic_out);
    assign ledMic = mic_out;
    
    ///VOLUME LEVEL DISPLAY FOR 7SEG///
    //Convert 0-15 into BCD
    bcd bcd1(maxLED, bcd[1], bcd[0]);
    //Convert 4-bit BCD into 7-seg data
    char_disp char1({4'b0,bcd[1]}, bcdseg[1]);
    char_disp char0({4'b0,bcd[0]}, bcdseg[0]);
    ///VOLUME LEVEL DISPLAY FOR 7SEG///
    
    ///TEXT SCROLLING///
    //Scrolls a string of <length> on the 7-seg. Outputs individual data for each anode
    string_driver strdriv(clk4sig, 0, string, length, char[0], char[1], char[2], char[3]);
    char_disp str_0(char[0], charseg[0]);
    char_disp str_1(char[1], charseg[1]);
    char_disp str_2(char[2], charseg[2]);
    char_disp str_3(char[3], charseg[3]);
    
    //Start Screen
    string_driver startScreen(clk4sig, 0, "PRESS MIDDLE BUTTON TO START", 28, startChar[0], startChar[1], startChar[2], startChar[3]);
    char_disp str_4(startChar[0], startSegChar[0]);
    char_disp str_5(startChar[1], startSegChar[1]);
    char_disp str_6(startChar[2], startSegChar[2]);
    char_disp str_7(startChar[3], startSegChar[3]);
    
    //Eco-Mode
    string_driver ecoModeDisp(clk4sig, 0, "ECO-MODE    ", 12, ecoChar[0], ecoChar[1], ecoChar[2], ecoChar[3]);
    char_disp str_8(ecoChar[0], ecoSegChar[0]);
    char_disp str_9(ecoChar[1], ecoSegChar[1]);
    char_disp str_10(ecoChar[2], ecoSegChar[2]);
    char_disp str_11(ecoChar[3], ecoSegChar[3]);
    ///TEXT SCROLLING///
    
    //mux for volume level || string || stopwatch
    //sw9 on = stopwatch mode, else sw1 on = volume level, sw1 off = string
    mux3to1 muxseg0(bcdseg[0],charseg[0], watch0, sw[1], sw[9], segData[0]);
    mux3to1 muxseg1(bcdseg[1],charseg[1], watch1, sw[1], sw[9], segData[1]);
    mux3to1 muxseg2(8'b11111111, charseg[2], watch2, sw[1], sw[9], segData[2]);
    mux3to1 muxseg3(8'b11111111, charseg[3], watch3, sw[1], sw[9], segData[3]);
    
    //Display driver for 7-segs; display 4 separate numbers on each 7-seg
    ledDriv ledDriver(CLK100MHZ, segData[0], segData[1], segData[2], segData[3], segY, anY);
    ledDriv ledDriverStart(CLK100MHZ, startSegChar[0], startSegChar[1], startSegChar[2], startSegChar[3], segStart, anStart);
    ledDriv ledDriverEco(CLK100MHZ, ecoSegChar[0], ecoSegChar[1], ecoSegChar[2], ecoSegChar[3], segEco, anEco);
    
    //mux for 7-seg
    //sw1 off = second input; on = first input
    mux1 muxFinal(customSeg, segY, customFlag, segOut);
    mux1 muxFinal2(customAnode, anY, customFlag, anOut);
    
    
    //StartMode && EcoMode Multiplex
    assign seg = (startMode) ? segStart : (ecoMode) ? segEco : segOut;
    assign an = (startMode) ? anStart : (ecoMode) ? anEco : (gamestate == 1 || gamestate == 0) ? 4'b1111 : anOut; 
    assign led = (startMode || ecoMode || gamestate == 1 || gamestate == 0) ? 16'h0000 : ledMic;
    assign pixel_data = (ecoMode) ? 0 : pixel_data_main;
    
    //Display driver for OLED
    coordinate_display disp1(clk6p25msig, clk40sig, clk20sig, clk361sig, clk4sig, clk1sig, maxLED, mid_sel, right_sel, 
                                left_sel, up_sel, down_sel, sw[15], sw[14], sw[13], sw[12], sw[11], customAnode, customSeg,
                                 pixel_index, pixel_data_main, customFlag, sw[9], startMode, gamestate); 
    //Eco-mode
    always @ (posedge clk1sig or posedge mid_sel or posedge up_sel or posedge down_sel or posedge left_sel or posedge right_sel)
    begin
        if(mid_sel == 1 || up_sel == 1 || down_sel == 1 || left_sel == 1 || right_sel == 1) //Reset timer
            ecoCount = 0;
        else
        begin
            ecoCount = ecoCount + 1;
            if(ecoCount >= 30)
            begin
                ecoCount = 30;
                ecoMode = 1;
            end
            else
                ecoMode = 0;
        end 
    end             
                                 
    //Stopwatch Module
    stopwatch watchmod(clk20sig, clk1sig, sw[9], down_sel, mid_sel, sw[8], watch3, watch2, watch1, watch0);
              
    //Mic and OLED modules
    Audio_Capture mic(CLK100MHZ, clk20ksig, J_MIC3_Pin3, J_MIC3_Pin1,J_MIC3_Pin4, mic_in); 
    Oled_Display oled(clk6p25msig, 0, frame_begin, sending_pixels, sample_pixels, pixel_index,
                        pixel_data, JC[0], JC[1], JC[3], JC[4], JC[5], JC[6], JC[7], teststate); 
    
    //Update raw mic data at a rate of 4Hz
    always @ (posedge clk4sig) begin
        mic_raw <= mic_in;
    end
                                        
    //Peak volume meter code, refreshes max at a rate of 20kHz
    always @ (posedge clk20ksig) begin
        resetMax = resetMax + 1; 
        if(resetMax >= 999) begin   //Update LED trail at a 20Hz frequency
            resetMax = 0;
            maxLED = 0;
            for(j = (MIN_VOL + STEP); j < 4096; j = j + STEP)   //Update index of highest lit LED
                if(max >= j)
                    maxLED = maxLED + 1;
            max = 0;
        end
       
        if(mic_in > max) begin   //Update local peak
            max = mic_in;
            if (max <= MIN_VOL)
                max = MIN_VOL;
        end  
    end
    
    //Light all LEDs at and below the LED index
    always @ * begin
        ledBar = 0;
        for(i = 0; i<=maxLED; i = i + 1)
            ledBar[i] = 1;
    end
endmodule