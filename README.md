# SoundDisplay

//Tetris game driver module: Board == 10 wide by 21 long (+4 height for long block and block generation)
//To lose, gamestate == 1 and block exceed height limit on static
module game_driver(input clk1Hz, clk20Hz, input enable, input reset, input [3:0] mic_input);

    reg [4:0] count = 0;
    reg [9:0] static_array [0:24]; //10 wide 25 tall for padding
    reg [9:0] moving_array [0:24]; //10 wide 25 tall for padding
    reg collision = 0;
    reg [4:0] lowest_row = 3;
    reg choose_block = 0;
    reg [2:0] current_block = 0;
    reg [1:0] gameState = 0; //0 = continue, 1 = lose
    wire [2:0] random_block;
    reg newGame = 1;
    integer i, j;
    
    block_generation block(clk20Hz, mic_input, random_block);
    
    always @ (posedge clk20Hz or posedge reset) //Game speed set at 1Hz
    begin
        if(reset == 1) //Reset
        begin
            for(i = 0; i < 25; i = i + 1) //Clear everything back to 0
            begin
                static_array[i] = 0;
                moving_array[i] = 0;
            end
            gameState = 0;
            count = 0;
            newGame = 1;
        end
        
        else //Normal operation
        begin
            //Reset all variables
            collision = 0;
            generate_block = 0;
            
            count = count + 1;

            //TO ADD: Button functions to move block here (left right rotate)
            
            if(count == 20) //End of 1 one cycle
            begin
                count = 0;
                
                //Check next step for any collisions
                for(j = 0; j < 10; j = j + 1)
                begin
                    if(moving_array[lowest_row][j] == 1)
                    begin
                        if(static_array[lowest_row -1][j] == 1)
                            collision = 1;
                    end
                end
                
                //Block collides on next frame
                if (collision == 1 || lowest_row == 24)
                begin
                    //Place block into static_array
                    for(i = 0; i < 25; i = i + 1)
                    begin
                        static_array[i] = static_array[i] | moving_array[i];
                        moving_array[i] = 0;
                    end
                    //Check for continue or lose condition
                    if(static_array[3] != 0)
                        gameState = 1;
                    else
                    begin
                        //Checking for rows with all 1's to clear
                        for(i = 4; i < 25; i = i + 1)
                        begin
                            if(static_array[i] == 10'b1111111111)
                            begin
                                static_array[i] = 0; //Clear row
                                for(j = i - 1; j >= 3 ; j = j - 1) //Shift all rows down into clear row
                                    static_array[j + 1] = static_array[j];
                            end
                        end
                    end
                    generate_block = 1; 
                end
                
                //No collision detected, continue game with current block
                else
                begin
                    //Move moving blocks down by one index
                    for(i = lowest_row; i >= lowest_row - 3; i = i - 1) //Max height of 1 block = 4 blocks high, shift start from bottom of block
                    begin
                        moving_array[i+1] = moving_array[i];
                    end
                    lowest_row = lowest_row + 1;
                end
                
                //Block Generation
                if(generate_block == 1 || newGame == 1)
                begin
                    newGame = 0;
                    if(generate_block == 0)
                        current_block = random_block;
                        
                    case(current_block)
                    3'd0: //Line block
                    begin 
                        moving_array[0] = 10'b0000010000;
                        moving_array[1] = 10'b0000010000;
                        moving_array[2] = 10'b0000010000;
                        moving_array[3] = 10'b0000010000; 
                    end
                    3'd1: //Left Z block
                    begin 
                        moving_array[0] = 10'b0000000000;
                        moving_array[1] = 10'b0000100000;
                        moving_array[2] = 10'b0000110000;
                        moving_array[3] = 10'b0000010000; 
                    end
                    3'd2: //right Z block
                    begin 
                        moving_array[0] = 10'b0000000000;
                        moving_array[1] = 10'b0000100000;
                        moving_array[2] = 10'b0001100000;
                        moving_array[3] = 10'b0001000000; 
                    end
                    3'd3: //Square
                    begin 
                        moving_array[0] = 10'b0000000000;
                        moving_array[1] = 10'b0000000000;
                        moving_array[2] = 10'b0000110000;
                        moving_array[3] = 10'b0000110000; 
                    end
                    3'd4: //T-block
                    begin 
                        moving_array[0] = 10'b0000000000;
                        moving_array[1] = 10'b0000000000;
                        moving_array[2] = 10'b0000010000;
                        moving_array[3] = 10'b0000111000; 
                    end
                    3'd5: //Left L block
                    begin 
                        moving_array[0] = 10'b0000000000;
                        moving_array[1] = 10'b0000100000;
                        moving_array[2] = 10'b0000100000;
                        moving_array[3] = 10'b0000110000; 
                    end
                    3'd6: //Right L block
                    begin 
                        moving_array[0] = 10'b0000000000;
                        moving_array[1] = 10'b0000010000;
                        moving_array[2] = 10'b0000010000;
                        moving_array[3] = 10'b0000110000; 
                    end
                    endcase
                    
                    generate_block = 0;
                end
            end
        end
    end
endmodule

