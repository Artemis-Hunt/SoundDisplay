`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 09:49:04
// Design Name: 
// Module Name: game_driver
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

//Tetris game driver module: Board == 10 wide by 21 long (+4 height for long block and block generation)
//bit-0 and bit-11 used for padding the walls
//To lose, gamestate == 1 and block exceed height limit on static
module tetris_main(input clk20Hz, clk625MHz, input enable, reset, btn_up, btn_down, btn_left, btn_right, btn_mid, input [12:0]pixel_index ,output reg [15:0]OLED_colour = 0);

    reg [4:0] count = 0;
    reg [299:0] static_blocks = 0, moving_blocks = 0;
    reg collision = 0;
    reg left_clear = 0, right_clear = 0;
    reg [4:0] lowest_row = 3;
    reg [3:0] left_reg = 0;
    reg [3:0] right_reg = 0;
    reg [3:0] left_pos = 0;
    reg [3:0] right_pos = 0;
    reg side_collision;
    reg [2:0] current_block = 0;
    reg [2:0] block_state = 0;
    reg [1:0] gameState = 0; //0 = continue, 1 = lose
    wire [2:0] random_block;
    reg newGame = 1;
    reg generate_block = 0;
    reg [15:0] left_bound = 0, right_bound = 0;
    reg [9:0] block_start = 0; //Index of where the current block starts
    wire [6:0] x;
    wire [6:0] y;
    reg [3:0] top_left = 0;
    wire [4:0] row;
    wire [8:0] row_index;
    reg [2:0]block_out = 0;
    reg border_out = 0;
    reg [47:0] temp_rotate = 0;
    integer i, j;
    
    //block_generation block(clk20Hz, mic_input, random_block);
    xycalculator(clk625MHz, pixel_index, x, y);
    
    //Row 0-24, from top to bottom. Row index is the "reversed" index of first pixel in that row 
    //i.e. pixel 299 has row_index 0, pixel 11 has row_index 288
    assign row = y / 3 + 4;
    assign row_index = row * 12;
    
    //Visual driver
    always @ (posedge clk625MHz)
    begin
        
        block_out = 0;
        if( x >= 1 && x <=10 && row >=4 && row <= 24)
            if(static_blocks[299 - x - row_index] == 1 || moving_blocks[299 - x - row_index] == 1)
                block_out = 1;
        //Draw border
        if((x >= 30 && x <= 32) || x == 95 || (x >= 0 && x <= 1) || (y == 63))
            border_out = 1;
        else
            border_out = 0;
            
        OLED_colour = (block_out == 1) ? 16'hF800 : (border_out) ? 16'hFFFF : 16'h0000;
//        (block_out == 7) ? 16'hA87D : (block_out == 6) ? 16'hEDBF : (block_out == 5) ? 16'hFFFF : (block_out == 4) ? 16'h05FF : (block_out == 3) ? 
//                                16'hFD40 : (block_out == 2) ? 16'h27E0 : 
    end
    
    //Game Engine
    always @ (posedge clk20Hz or posedge reset) 
    begin
        if(reset == 1) begin
            static_blocks = 0; moving_blocks = 0;
            collision = 0;
            gameState = 0;
            count = 0;
            newGame = 1;
        end
        else begin //Normal operation
            //Reset all variables
            collision = 0;
            generate_block = 0;
            
            //Generate play area
            if(newGame == 1)
                    static_blocks = {21{12'b100000000001}};
            
            //Start game
            if(enable == 1)
                count = count + 1;
            
            block_start = 299 - (lowest_row-3)*12;
            
            //Button functions
            if(btn_left == 1) //Shift left
            begin
                collision = (static_blocks[block_start -: 12*4] & (moving_blocks[block_start -: 12*4] << 1) != 0);
                if(collision == 0) begin
                    moving_blocks[block_start -: 12*4] = moving_blocks[block_start -: 12*4] << 1;
                    top_left = top_left - 1;
                end
            end
            
            if(btn_right == 1) //Shift right
            begin
                collision = (static_blocks[block_start -: 12*4] & (moving_blocks[block_start -: 12*4] >> 1) != 0);
                if(collision == 0) begin
                    moving_blocks = moving_blocks >> 1;
                    top_left = top_left + 1;
                end
            end
            
            if(btn_down == 1) //Fast drop
            begin
                collision = (static_blocks[(block_start - 12) -: 12*4] & (moving_blocks[block_start -: 12*4] >> 12) != 0);
                if(collision == 0 && lowest_row > 24) begin
                    moving_blocks = moving_blocks >> 12;
                    lowest_row = lowest_row + 1;
                end
            end
            
            if(btn_mid == 1) //Rotate
            begin
                case(current_block)
                3'd0: //Long Block
                begin 
                    //Horizontal rotate
                    if(block_state == 0) begin
                        temp_rotate = 48'b1111 << (2*12 + (8-top_left));
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 1;
                        end
                    end
                    //Vertical rotate
                    else if(block_state == 1)
                    begin
                        temp_rotate = {4{12'b1}} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 2;
                        end
                    end
                    else if(block_state == 2)
                    begin
                        temp_rotate = 48'b1111 << (1*12 + (8-top_left));
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 3;
                        end
                    end
                    else if(block_state == 3)
                    begin
                        temp_rotate = {4{12'b1}} << (10-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 0;
                        end
                    end
                end
                3'd1: //Left Z block
                begin
                    if(block_state == 0)
                    begin
                        temp_rotate = {12'b011,12'b110,12'b0} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 1;
                        end
                    end
                    else if(block_state == 1)
                    begin
                        temp_rotate = {12'b010,12'b011,12'b001} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 2;
                        end
                    end
                    else if(block_state == 2)
                    begin
                        temp_rotate = {12'b0,12'b011,12'b110} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 3;
                        end
                    end
                    else if(block_state == 3)
                    begin
                        temp_rotate = {12'b100,12'b110,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 0;
                        end
                    end
                end
                3'd2: //Right Z block
                begin
                    if(block_state == 0)
                    begin
                        temp_rotate = {12'b110,12'b011,12'b0} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 1;
                        end
                    end
                    else if(block_state == 1)
                    begin
                        temp_rotate = {12'b001,12'b011,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 2;
                        end
                    end
                    else if(block_state == 2)
                    begin
                        temp_rotate = {12'b0,12'b110,12'b011} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 3;
                        end
                    end
                    else if(block_state == 3)
                    begin
                        temp_rotate = {12'b100,12'b110,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 0;
                        end
                    end
                end
                3'd4: //T-block
                begin
                    if(block_state == 0)
                    begin
                        temp_rotate = {12'b010,12'b111,12'b0} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 1;
                        end
                    end
                    else if(block_state == 1)
                    begin
                        temp_rotate = {12'b010,12'b011,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 2;
                        end
                    end
                    else if(block_state == 2)
                    begin
                        temp_rotate = {12'b0,12'b111,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 3;
                        end
                    end
                    else if(block_state == 3)
                    begin
                        temp_rotate = {12'b010,12'b110,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 0;
                        end
                    end
                end
                3'd5: //Normal L block
                begin
                    if(block_state == 0)
                    begin
                        temp_rotate = {12'b001,12'b111,12'b0} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 1;
                        end
                    end
                    else if(block_state == 1)
                    begin
                        temp_rotate = {12'b010,12'b010,12'b011} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 2;
                        end
                    end
                    else if(block_state == 2)
                    begin
                        temp_rotate = {12'b0,12'b111,12'b100} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 3;
                        end
                    end
                    else if(block_state == 3)
                    begin
                        temp_rotate = {12'b110,12'b010,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 0;
                        end
                    end
                end
                3'd6: //Mirrored L block
                begin
                    if(block_state == 0)
                    begin
                        temp_rotate = {12'b100,12'b111,12'b0} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 1;
                        end
                    end
                    else if(block_state == 1)
                    begin
                        temp_rotate = {12'b011,12'b010,12'b010} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 2;
                        end
                    end
                    else if(block_state == 2)
                    begin
                        temp_rotate = {12'b0,12'b111,12'b001} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 3;
                        end
                    end
                    else if(block_state == 3)
                    begin
                        temp_rotate = {12'b010,12'b010,12'b110} << (9-top_left);
                        collision = ((static_blocks[block_start -: 12*4] & temp_rotate) != 0);
                        if(collision == 0) begin
                            moving_blocks[block_start -: 12*4] = temp_rotate;
                            block_state = 0;
                        end
                    end
                end
                default: ;
                endcase
            end
            
            if(count == 10) //End of 1 one cycle
            begin
                count = 0;
                collision = (static_blocks[(block_start - 12) -: 12*4] & (moving_blocks[block_start -: 12*4] >> 12) != 0);
                //Block collides on next frame
                if (collision == 1 || lowest_row == 24) //Increased the bottom height
                begin
                    //Place block into static_array and respective colour arrays
                    static_blocks = static_blocks | moving_blocks;
                    //Check for continue or lose condition
                    if(static_blocks[3*12 -: 12] != 0)
                        gameState = 1;
                    else
                    begin
                        //Checking for rows with all 1's to clear
                        for(i=4;i<25;i=i+1) begin
                            if(static_blocks[(299 - i*12) -: 12] == {12{1'b1}}) begin
                                static_blocks[(299 - i*12) -: 12] = static_blocks[(299 - (i-1)*12) -: 12];
                                static_blocks[(299 - (i-1)*12) -: 12] = 12'b100000000001;
                            end
                                
                        end
                    end
                    generate_block = 1; 
                end
                
                //No collision detected, continue game with current block
                else
                begin
                    //Move moving blocks down by one index
                    moving_blocks = moving_blocks >> 12;
                    lowest_row = lowest_row + 1;
                end
                
                //Block Generation
                if(generate_block == 1 || newGame == 1)
                begin
                    current_block = (current_block + 1) % 7;//random_block;
                        
                    case(current_block)
                    3'd0: //Line block
                    begin 
                        moving_blocks[299 -: 12*4] = {4{12'b000001000000}};
                        top_left = 4;
                        
                    end
                    3'd1: //Left Z block
                    begin 
                        moving_blocks[299 -: 12*4] = {12'b0, 12'b000001000000, 12'b000001100000, 12'b000000100000};
                        top_left = 5;
                    end
                    3'd2: //right Z block
                    begin 
                        moving_blocks[299 -: 12*4] = {12'b000000000000, 12'b000000100000, 12'b000001100000, 12'b000001000000};
                        top_left = 5;
                    end
                    3'd3: //Square
                    begin 
                        moving_blocks[299  -: 12*4] = {12'b000000000000, 12'b000000000000, 12'b000001100000, 12'b000001100000}; 
                        top_left = 5;
                    end
                    3'd4: //T-block
                    begin 
                        moving_blocks[299  -: 12*4] = {12'b000000000000, 12'b000000100000, 12'b000001100000, 12'b000000100000}; 
                        top_left = 5;
                    end
                    3'd5: //Normal L block
                    begin 
                        moving_blocks[299  -: 12*4] = {12'b000000000000, 12'b000001100000, 12'b000000100000, 12'b000000100000};
                        top_left = 5;
                    end
                    3'd6: //Mirrored L block
                    begin 
                        moving_blocks[299  -: 12*4] = {12'b000000000000, 12'b000000100000, 12'b000000100000, 12'b000001100000};
                        top_left = 5;
                    end
                    endcase
                    //Reset flags
                    newGame = 0;
                    generate_block = 0;
                    lowest_row = 3;
                    block_state = 0;
                end
            end
        end
    end
endmodule