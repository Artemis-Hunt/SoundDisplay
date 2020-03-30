`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2020 10:14:04
// Design Name: 
// Module Name: font
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


module font(input [7:0] char, output reg [40:1] data);
    always @ * begin
        case(char)
            " ": data = 0;
            "A": data = {8'h7F, 8'h88, 8'h88, 8'h88, 8'h7F};
            "B": data = {8'hFF, 8'h91, 8'h91, 8'h91, 8'h6E}; 
            "C": data = {8'h7E, 8'h81, 8'h81, 8'h81, 8'h42}; 
            "D": data = {8'hFF, 8'h81, 8'h81, 8'h42, 8'h3C}; 
            "E": data = {8'hFF, 8'h91, 8'h91, 8'h91, 8'h81}; 
            "F": data = {8'hFF, 8'h90, 8'h90, 8'h90, 8'h80}; 
            "G": data = {8'h7E, 8'h81, 8'h89, 8'h89, 8'h4E}; 
            "H": data = {8'hFF, 8'h10, 8'h10, 8'h10, 8'hFF}; 
            "I": data = {8'h81, 8'h81, 8'hFF, 8'h81, 8'h81}; 
            "J": data = {8'h06, 8'h01, 8'h01, 8'h01, 8'hFE}; 
            "K": data = {8'hFF, 8'h18, 8'h24, 8'h42, 8'h81}; 
            "L": data = {8'hFF, 8'h01, 8'h01, 8'h01, 8'h01}; 
            "M": data = {8'hFF, 8'h40, 8'h30, 8'h40, 8'hFF}; 
            "N": data = {8'hFF, 8'h40, 8'h30, 8'h08, 8'hFF}; 
            "O": data = {8'h7E, 8'h81, 8'h81, 8'h81, 8'h7E}; 
            "P": data = {8'hFF, 8'h88, 8'h88, 8'h88, 8'h70}; 
            "Q": data = {8'h7E, 8'h81, 8'h85, 8'h82, 8'h7D}; 
            "R": data = {8'hFF, 8'h88, 8'h8C, 8'h8A, 8'h71}; 
            "S": data = {8'h61, 8'h91, 8'h91, 8'h91, 8'h8E}; 
            "T": data = {8'h80, 8'h80, 8'hFF, 8'h80, 8'h80}; 
            "U": data = {8'hFE, 8'h01, 8'h01, 8'h01, 8'hFE}; 
            "V": data = {8'hF0, 8'h0C, 8'h03, 8'h0C, 8'hF0}; 
            "W": data = {8'hFF, 8'h02, 8'h0C, 8'h02, 8'hFF}; 
            "X": data = {8'hC3, 8'h24, 8'h18, 8'h24, 8'hC3}; 
            "Y": data = {8'hE0, 8'h10, 8'h0F, 8'h10, 8'hE0}; 
            "Z": data = {8'h83, 8'h85, 8'h99, 8'hA1, 8'hC1}; 
            "a": data = {8'h06, 8'h29, 8'h29, 8'h29, 8'h1F}; 
            "b": data = {8'hFF, 8'h09, 8'h11, 8'h11, 8'h0E}; 
            "c": data = {8'h1E, 8'h21, 8'h21, 8'h21, 8'h12}; 
            "d": data = {8'h0E, 8'h11, 8'h11, 8'h09, 8'hFF}; 
            "e": data = {8'h0E, 8'h15, 8'h15, 8'h15, 8'h0C}; 
            "f": data = {8'h08, 8'h7F, 8'h88, 8'h80, 8'h40}; 
            "g": data = {8'h30, 8'h49, 8'h49, 8'h49, 8'h7E}; 
            "h": data = {8'hFF, 8'h08, 8'h10, 8'h10, 8'h0F}; 
            "i": data = {8'h00, 8'h00, 8'h5F, 8'h00, 8'h00}; 
            "j": data = {8'h02, 8'h01, 8'h21, 8'hBE, 8'h00}; 
            "k": data = {8'hFF, 8'h04, 8'h0A, 8'h11, 8'h00}; 
            "l": data = {8'h00, 8'h81, 8'hFF, 8'h01, 8'h00}; 
            "m": data = {8'h3F, 8'h20, 8'h18, 8'h20, 8'h1F}; 
            "n": data = {8'h3F, 8'h10, 8'h20, 8'h20, 8'h1F}; 
            "o": data = {8'h0E, 8'h11, 8'h11, 8'h11, 8'h0E}; 
            "p": data = {8'h3F, 8'h24, 8'h24, 8'h24, 8'h18}; 
            "q": data = {8'h10, 8'h28, 8'h28, 8'h18, 8'h3F}; 
            "r": data = {8'h1F, 8'h08, 8'h10, 8'h10, 8'h08}; 
            "s": data = {8'h09, 8'h15, 8'h15, 8'h15, 8'h02}; 
            "t": data = {8'h20, 8'hFE, 8'h21, 8'h01, 8'h02}; 
            "u": data = {8'h1E, 8'h01, 8'h01, 8'h02, 8'h1F}; 
            "v": data = {8'h1C, 8'h02, 8'h01, 8'h02, 8'h1C}; 
            "w": data = {8'h1E, 8'h01, 8'h0E, 8'h01, 8'h1E}; 
            "x": data = {8'h11, 8'h0A, 8'h04, 8'h0A, 8'h11}; 
            "y": data = {8'h00, 8'h39, 8'h05, 8'h05, 8'h3E}; 
            "z": data = {8'h11, 8'h13, 8'h15, 8'h19, 8'h11}; 
            default: data = 0;
        endcase
    end
endmodule
