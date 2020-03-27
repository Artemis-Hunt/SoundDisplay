`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 15:09:30
// Design Name: 
// Module Name: clk20k_sim
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


module clk20k_sim();
    reg CLOCK = 0;
    wire sig;
    
    clk clk20 (CLOCK, 2499, sig);
    
    always begin
        #5 CLOCK = ~CLOCK;
    end
    
endmodule
