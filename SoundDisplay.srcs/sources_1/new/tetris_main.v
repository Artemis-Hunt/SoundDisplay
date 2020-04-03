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
    wire collision;
    reg [4:0] lowest_row = 3;
    reg [2:0] current_block = 0;
    reg [1:0] block_state = 0;
    reg [1:0] gameState = 0; //0 = continue, 1 = lose
    wire [2:0] random_block;
    reg generate_block = 0;
    wire [9:0] block_start; //Index of where the current block starts
    wire [6:0] x;
    wire [6:0] y;
    reg [3:0] top_left = 0;
    wire [4:0] row, col;
    wire [8:0] row_index;
    reg [2:0]block_out = 0;
    reg border_out = 0;
    reg [47:0] temp_blocks = 0;
    reg drop_down = 0, fast_drop = 0;
    wire [47:0] current_blocks, new_blocks, temp_static;
    wire shifted;
    reg collision_down = 0;
    reg new_game = 0;
    integer i, j;
    
    
    //block_generation block(clk20Hz, mic_input, random_block);
    xycalculator(clk625MHz, pixel_index, x, y);
    
    //Row 0-24, from top to bottom. Row index is the "reversed" index of first pixel in that row 
    //i.e. pixel 299 has row_index 0, pixel 11 has row_index 288
    assign row = y / 3 + 4;
    assign row_index = row * 12;
    assign col = x / 3;
    assign block_start = 299 - (lowest_row-3)*12;
    assign current_blocks = moving_blocks[block_start -: 48];
    assign temp_static = (drop_down) ? static_blocks[(block_start- 12) -: 48] : static_blocks[block_start -: 48];
    
    collision_check rotate(temp_static, temp_blocks, current_blocks, new_blocks, shifted);
    
    //Visual driver
    always @ (posedge clk625MHz)
    begin
        
        block_out = 0;
        if(col >= 1 && col <=10 && row <= 24)
            block_out = (static_blocks[299 - col - row_index] | moving_blocks[299 - col - row_index]);
        //Draw border
            //border_out = (x >= 30 && x <= 32) || x == 95 || (x >= 0 && x <= 1) || (y == 63);
            
        OLED_colour = (block_out == 1) ? 16'hF800 : (border_out) ? 16'hFFFF : 16'h0000;
//        (block_out == 7) ? 16'hA87D : (block_out == 6) ? 16'hEDBF : (block_out == 5) ? 16'hFFFF : (block_out == 4) ? 16'h05FF : (block_out == 3) ? 
//                                16'hFD40 : (block_out == 2) ? 16'h27E0 : 
    end
    
    //Game Engine
    always @ (posedge clk20Hz or posedge reset) 
    begin
        if(reset) begin
            moving_blocks = 0;
            lowest_row = 3;
            temp_blocks = 0;
            gameState = 0;
            new_game = 1;
            count = 0;
            static_blocks = {25{12'b100000000001}};
        end
        else begin //Normal operation
            //Reset all variables
            generate_block = new_game;
            
            //Start game
            count = (enable) ? ((count == 10) ? 0 : count + 1 ): count;
            
            //Button functions
            if(btn_left == 1) //Shift left
            begin
                temp_blocks = moving_blocks[block_start -: 48] << 1;
                moving_blocks[block_start -: 48] = new_blocks;
                top_left = top_left - shifted;
            end
            
            if(btn_right == 1) //Shift right
            begin
                temp_blocks = moving_blocks[block_start -: 48] >> 1;
                moving_blocks = new_blocks;
                top_left = top_left + shifted;
            end
            
            if(btn_down == 1) //Fast drop
                fast_drop = 1;
            
            if(btn_mid == 1) //Rotate
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
                moving_blocks[block_start -: 48] = new_blocks;
                block_state = block_state + shifted;
            end
            if(count == 1 || fast_drop == 1) //End of 1 one cycle
            begin
                drop_down = 1;
                temp_blocks = moving_blocks[block_start -: 48];
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
				
                drop_down = 0;    
            end
            if(generate_block == 1)
            begin
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
            end
            new_game = 0;
        end
    end
endmodule