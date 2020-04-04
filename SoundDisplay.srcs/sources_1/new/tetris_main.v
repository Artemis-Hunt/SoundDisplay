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
module tetris_main(input clk40Hz, clk625MHz, input enable, reset, btn_up, btn_down, btn_left, btn_right, btn_mid, input [6:0] x, y ,output reg [15:0]OLED_colour = 0);

    reg [5:0] count = 0, movement_count = 0;
    reg [311:0] static_blocks = {{25{12'b100000000001}}, {12{1'b1}}}, moving_blocks = 0;
    wire collision;
    reg [4:0] lowest_row = 3;
    reg [2:0] current_block = 0;
    reg [1:0] block_state = 0;
    reg [15:0] current_colour = 0;
    reg [4991:0] static_colour = 0;
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
    reg [129:0] rows_to_clear = 0;
    reg [4:0] current_clearing_row = 0;
    reg [1:0] movement = 0;
    reg new_game = 0;
    reg first_game = 1;
    integer i, j = 1;
    
    
    //Row 0-25, from top to bottom. Row index is the "reversed" index of first pixel in that row 
    //i.e. pixel 311 has row_index 0, pixel 11 has row_index 288
    assign row = y / 3 + 4;
    assign row_index = row * 12;
    assign col = x / 3;
    
    //Block start is the leftmost index of the top row which the block can be in (a 4x12 space)
    assign block_start = (lowest_row <= 24) ? 311 - (lowest_row-3)*12 : 59;
    assign current_blocks = moving_blocks[block_start -: 48];
    assign temp_static = static_blocks[block_start -: 48];
    
    //collision_check rotate(temp_static, temp_blocks, current_blocks, shifted);
    
    //Visual driver
    always @ (posedge clk625MHz)
    begin
        block_out = 0;
        if(col >= 1 && col <=10 && row <= 24)
            block_out = (static_blocks[311 - col - row_index] | moving_blocks[311 - col - row_index]);
        //Draw border
        border_out = (x >= 33 && x <= 35) || x == 95 || (x >= 0 && x <= 1) || (y == 63);
            
        OLED_colour = (block_out == 1) ? 16'hF800 : (border_out) ? 16'hFFFF : 16'h0000;
    end
    
    //Game Engine
    always @ (posedge clk40Hz or posedge reset) 
    begin
        if(reset) begin
            moving_blocks = 0; static_blocks = {{25{12'b100000000001}}, {12{1'b1}}};
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
                3'd3: //Square block, no rotate
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
            
            //Check for collision only if there has been movement
            collision_LRrotate = (movement != 0) ? ((temp_static & temp_blocks) != 48'b0) : 1;
            if(collision_LRrotate == 0) begin   //If no collision, change moving_blocks to the shifted blocks
                moving_blocks[block_start -: 48] = temp_blocks;
                case(movement)   //Update top_left or block_state depending on type of movement
                    2'd1: top_left = top_left - 1;
                    2'd2: top_left = top_left + 1;
                    2'd3: block_state = block_state + 1; 
                endcase 
            end
            movement = 0;
            
            if(count == 1 || fast_drop == 1) //End of 1 one cycle or fast drop activated
            begin
                collision_down = ((static_blocks[(block_start - 12) -: 48] & current_blocks) != 48'b0);
                //Block collides on next frame
                if (collision_down == 1)
                begin
                    //Place block into static_array and respective colour arrays
                    static_blocks = static_blocks | moving_blocks;
                    for(i=top_left;i<=(top_left+3) && i<=10;i=i+1) begin
                        for(j=block_start;j<=(block_start-36);j=j-12)
                            if(moving_blocks[j - i])
                                static_colour[(j - i)*16 +: 16] = current_colour; 
                    end
                    //Checking for rows with all 1's to clear
                    for(i=24;i>=4;i=i-1)
                        if(static_blocks[(311 - i*12 - 1) -: 10] == {10{1'b1}}) begin
                            for(j=i;j>=4;j=j-1)
                                static_blocks[(311 - j*12 - 1) -: 10] = static_blocks[(311 - (j-1)*12 - 1) -: 10];
                                static_colour[((311 - j*12) * 16 - 1) -: 160] = static_colour[((311 - (j-1)*12)*16 - 1) -: 160];
                        end
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
                3'd0: begin moving_blocks[311 -: 48] = {4{12'b000001000000}}; current_colour = 16'h07FE; end                                                     //Line
                3'd1: begin moving_blocks[311 -: 48] = {12'b0, 12'b000001000000, 12'b000001100000, 12'b000000100000}; current_colour = 16'h07E4; end             //Left Z
                3'd2: begin moving_blocks[311 -: 48] = {12'b000000000000, 12'b000000100000, 12'b000001100000, 12'b000001000000}; current_colour = 16'hF800; end  //Right Z 
                3'd3: begin moving_blocks[311 -: 48] = {12'b000000000000, 12'b000000000000, 12'b000001100000, 12'b000001100000}; current_colour = 16'hFFE0; end  //Square
                3'd4: begin moving_blocks[311 -: 48] = {12'b000000000000, 12'b000000100000, 12'b000001100000, 12'b000000100000}; current_colour = 16'hB01F; end  //T block
                3'd5: begin moving_blocks[311 -: 48] = {12'b000000000000, 12'b000001100000, 12'b000000100000, 12'b000000100000}; current_colour = 16'h007F; end  //Normal L block
                3'd6: begin moving_blocks[311 -: 48] = {12'b000000000000, 12'b000000100000, 12'b000000100000, 12'b000001100000}; current_colour = 16'hFD60; end  //Mirrored L block
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