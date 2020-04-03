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
module tetris_main(input clk40Hz, clk625MHz, input enable, reset, btn_up, btn_down, btn_left, btn_right, btn_mid, input [6:0] x, y ,output reg [15:0]OLED_colour = 0, output [7:0] top_left_seg,block_state_seg);

    reg [5:0] count = 0, movement_count = 0;
    reg [299:0] static_blocks = {25{12'b100000000001}}, moving_blocks = 0;
    wire collision;
    reg [4:0] lowest_row = 3;
    reg [2:0] current_block = 0;
    reg [1:0] block_state = 0;
    reg [1:0] gameState = 0; //0 = continue, 1 = lose
    wire [2:0] random_block;
    reg generate_block = 0;
    wire [9:0] block_start; //Index of where the current block starts
    reg [3:0] top_left = 0;
    wire [4:0] row, col;
    wire [8:0] row_index;
    reg [2:0]block_out = 0;
    reg border_out = 0;
    reg [47:0] temp_blocks = 0;
    reg fast_drop = 0;
    wire [47:0] current_blocks, new_blocks, temp_static;
    reg collision_down = 0, collision_LRrotate = 0; 
    reg [1:0] movement = 0;
    reg new_game = 0;
    reg first_game = 1;
    integer i, j;
    
    char_disp topleftdebug(top_left, top_left_seg);
    char_disp blockstatedebug(block_state, block_state_seg);
    
    
    //Row 0-24, from top to bottom. Row index is the "reversed" index of first pixel in that row 
    //i.e. pixel 299 has row_index 0, pixel 11 has row_index 288
    assign row = y / 3 + 4;
    assign row_index = row * 12;
    assign col = x / 3;
    assign block_start = 299 - (lowest_row-3)*12;
    assign current_blocks = moving_blocks[block_start -: 48];
    assign temp_static = static_blocks[block_start -: 48];
    
    //collision_check rotate(temp_static, temp_blocks, current_blocks, shifted);
    
    //Visual driver
    always @ (posedge clk625MHz)
    begin
        block_out = 0;
        if(col >= 1 && col <=10 && row <= 24)
            block_out = (static_blocks[299 - col - row_index] | moving_blocks[299 - col - row_index]);
        //Draw border
        border_out = (x >= 33 && x <= 35) || x == 95 || (x >= 0 && x <= 1) || (y == 63);
            
        OLED_colour = (block_out == 1) ? 16'hF800 : (border_out) ? 16'hFFFF : 16'h0000;
    end
    
    //Game Engine
    always @ (posedge clk40Hz or posedge reset) 
    begin
        if(reset) begin
            moving_blocks = 0; static_blocks = {25{12'b100000000001}};
            movement = 0;
            temp_blocks = 0;
            gameState = 0;
            current_block = 0;
            new_game = 1; count = 0; fast_drop = 0;
            
        end
        else begin //Normal operation
            //Reset all variables
            if(first_game) new_game = 1;
            generate_block = new_game;
            //Start game
            count = (enable) ? ((count == 10) ? 0 : count + 1 ): count;
            first_game = (enable) ? 0 : first_game;
            //Button functions
            if(btn_left == 1) //Shift left
            begin
                temp_blocks = moving_blocks[block_start -: 48] << 1;
                movement = 1;
            end
            else if(btn_right == 1) //Shift right
            begin
                temp_blocks = moving_blocks[block_start -: 48] >> 1;
                movement = 2;
            end
            else if(btn_down == 1) //Fast drop
                fast_drop = 1;
            else if(btn_mid == 1) //Rotate
            begin
                case(current_block)
                3'd0: //Long Block
                begin 
                    case(block_state)
                    2'd0: temp_blocks = 48'b1111 << (24 + (8-top_left));
                    2'd1: temp_blocks = {4{12'b1}} << (9-top_left);
                    2'd2: temp_blocks = 48'b1111 << (12 + (8-top_left));
                    2'd3: temp_blocks = {4{12'b1}} << (10-top_left);
                    endcase
                end
                3'd1: //Left Z block
                begin
                    case(block_state)
                    2'd0: temp_blocks = {12'b011,12'b110,12'b0} << (9-top_left);
                    2'd1: temp_blocks = {12'b010,12'b011,12'b001} << (9-top_left);
                    2'd2: temp_blocks = {12'b0,12'b011,12'b110} << (9-top_left);
                    2'd3: temp_blocks = {12'b100,12'b110,12'b010} << (9-top_left);
                    endcase
                end
                3'd2: //Right Z block
                begin
                    case(block_state)
                    2'd0: temp_blocks = {12'b110,12'b011,12'b0} << (9-top_left);
                    2'd1: temp_blocks = {12'b001,12'b011,12'b010} << (9-top_left);
                    2'd2: temp_blocks = {12'b0,12'b110,12'b011} << (9-top_left);
                    2'd3: temp_blocks = {12'b100,12'b110,12'b010} << (9-top_left);
                    endcase
                end
                3'd3:
                begin
                    temp_blocks = current_blocks;
                end
                3'd4: //T-block
                begin
                    case(block_state)
                    2'd0: temp_blocks = {12'b010,12'b111,12'b0} << (9-top_left);
                    2'd1: temp_blocks = {12'b010,12'b011,12'b010} << (9-top_left);
                    2'd2: temp_blocks = {12'b0,12'b111,12'b010} << (9-top_left);
                    2'd3: temp_blocks = {12'b010,12'b110,12'b010} << (9-top_left);
                    endcase
                end
                3'd5: //Normal L block
                begin
                    case(block_state)
                    2'd0: temp_blocks = {12'b001,12'b111,12'b0} << (9-top_left);
                    2'd1: temp_blocks = {12'b010,12'b010,12'b011} << (9-top_left);
                    2'd2: temp_blocks = {12'b0,12'b111,12'b100} << (9-top_left);
                    2'd3: temp_blocks = {12'b110,12'b010,12'b010} << (9-top_left);
                    endcase
                end
                3'd6: //Mirrored L block
                begin
                    case(block_state)
                    2'd0: temp_blocks = {12'b100,12'b111,12'b0} << (9-top_left);
                    2'd1: temp_blocks = {12'b011,12'b010,12'b010} << (9-top_left);
                    2'd2: temp_blocks = {12'b0,12'b111,12'b001} << (9-top_left);
                    2'd3: temp_blocks = {12'b010,12'b010,12'b110} << (9-top_left);
                    endcase
                end
                default: ;
                endcase
                //Update block_state and moving_blocks
                movement = 3;
            end
            
            collision_LRrotate = ((temp_static & temp_blocks) != 48'b0);
            if(collision_LRrotate == 0) begin
                moving_blocks[block_start -: 48] = temp_blocks;
                case(movement)
                    2'd1: top_left = top_left - 1;
                    2'd2: top_left = top_left + 1;
                    2'd3: block_state = block_state + 1;
                endcase
            end
            else moving_blocks[block_start -: 48] = current_blocks;
            movement = 0;
            if(count == 1 || fast_drop == 1) //End of 1 one cycle
            begin
                collision_down = ((static_blocks[(block_start - 12) -: 48] & current_blocks) != 48'b0);
                //Block collides on next frame
                if (collision_down == 1 || lowest_row == 24) //Increased the bottom height
                begin
                    //Place block into static_array and respective colour arrays
                    static_blocks = static_blocks | moving_blocks;
                    //Checking for rows with all 1's to clear
//                    for(i=24;i>=0;i=i-1)
//                        if(static_blocks[(299 - i*12 - 1) -: 10] == {10{1'b1}})
//                            static_blocks[(299 - i*12 - 1) -: 10] = static_blocks[299];   
                    //gameState = (static_blocks[263 -: 12] != 0);
                    moving_blocks = 0;
                    generate_block = 1; 
                    fast_drop = 0;
                end
                //No collision detected, continue game with current block
                else
                begin
                    //Move moving blocks down by one index
                    moving_blocks = moving_blocks >> 12;
                    lowest_row = lowest_row + 1;
                end   
            end
            if(generate_block == 1)
            begin
                moving_blocks = 0;
                current_block = (current_block == 6) ? 0 : current_block + 1;//random_block;    
                case(current_block)
                3'd0: moving_blocks[299 -: 48] = {4{12'b000001000000}};                                                      //Line
                3'd1: moving_blocks[299 -: 48] = {12'b0, 12'b000001000000, 12'b000001100000, 12'b000000100000};              //Left Z
                3'd2: moving_blocks[299 -: 48] = {12'b000000000000, 12'b000000100000, 12'b000001100000, 12'b000001000000};   //Right Z 
                3'd3: moving_blocks[299 -: 48] = {12'b000000000000, 12'b000000000000, 12'b000001100000, 12'b000001100000};   //Square
                3'd4: moving_blocks[299 -: 48] = {12'b000000000000, 12'b000000100000, 12'b000001100000, 12'b000000100000};   //T block
                3'd5: moving_blocks[299 -: 48] = {12'b000000000000, 12'b000001100000, 12'b000000100000, 12'b000000100000};   //Normal L block
                3'd6: moving_blocks[299 -: 48] = {12'b000000000000, 12'b000000100000, 12'b000000100000, 12'b000001100000};   //Mirrored L block
                endcase
                top_left  = (current_block == 0) ? 4 : 5;
                //Reset flags
                generate_block = 0;
                lowest_row = 3;
                block_state = 0;
            end
            new_game = 0;
        end
    end
endmodule