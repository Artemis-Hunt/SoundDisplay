`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.03.2020 15:42:28
// Design Name: 
// Module Name: mux3to1
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


module mux3to1(input [15:0]sig1, sig2, watchSeg, input ctrl, watchMode, output [15:0] opt);

    assign opt = (watchMode) ? watchSeg : (ctrl) ? sig1 : sig2; //Ctrl on == sig1
    
endmodule
