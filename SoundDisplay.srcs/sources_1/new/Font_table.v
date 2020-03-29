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


module font(input [7:0] char, output reg [64:1] data);
    always @ * begin
        case(char)
            " ": data = 0;
            "A": data = {8'h7C, 8'hC6, 8'hC6, 8'hFE, 8'hC6, 8'hC6, 8'hC6, 8'h00};   // Char 065 (A)
            "B": data = {8'hFC, 8'h66, 8'h66, 8'h7C, 8'h66, 8'h66, 8'hFC, 8'h00};	// Char 066 (B)
            "C": data = {8'h7C, 8'hC6, 8'hC0, 8'hC0, 8'hC0, 8'hC6, 8'h7C, 8'h00};   // Char 067 (C)
            "D": data = {8'hFC, 8'h66, 8'h66, 8'h66, 8'h66, 8'h66, 8'hFC, 8'h00};   // Char 068 (D)
            "E": data = {8'hFE, 8'h62, 8'h68, 8'h78, 8'h68, 8'h62, 8'hFE, 8'h00};   // Char 069 (E)
            "F": data = {8'hFE, 8'h62, 8'h68, 8'h78, 8'h68, 8'h60, 8'hF0, 8'h00};   // Char 070 (F)
            "G": data = {8'h7C, 8'hC6, 8'hC6, 8'hC0, 8'hCE, 8'hC6, 8'h7E, 8'h00};   // Char 071 (G)
            "H": data = {8'hC6, 8'hC6, 8'hC6, 8'hFE, 8'hC6, 8'hC6, 8'hC6, 8'h00};   // Char 072 (H)
            "I": data = {8'h3C, 8'h18, 8'h18, 8'h18, 8'h18, 8'h18, 8'h3C, 8'h00};   // Char 073 (I)
            "J": data = {8'h1E, 8'h0C, 8'h0C, 8'h0C, 8'hCC, 8'hCC, 8'h78, 8'h00};   // Char 074 (J)
            "K": data = {8'hE6, 8'h66, 8'h6C, 8'h78, 8'h6C, 8'h66, 8'hE6, 8'h00};   // Char 075 (K)
            "L": data = {8'hF0, 8'h60, 8'h60, 8'h60, 8'h62, 8'h66, 8'hFE, 8'h00};   // Char 076 (L)
            "M": data = {8'h82, 8'hC6, 8'hEE, 8'hFE, 8'hD6, 8'hC6, 8'hC6, 8'h00};   // Char 077 (M)
            "N": data = {8'hC6, 8'hE6, 8'hF6, 8'hDE, 8'hCE, 8'hC6, 8'hC6, 8'h00};   // Char 078 (N)
            "O": data = {8'h7C, 8'hC6, 8'hC6, 8'hC6, 8'hC6, 8'hC6, 8'h7C, 8'h00};   // Char 079 (O)
            "P": data = {8'hFC, 8'h66, 8'h66, 8'h7C, 8'h60, 8'h60, 8'hF0, 8'h00};   // Char 080 (P)
            "Q": data = {8'h7C, 8'hC6, 8'hC6, 8'hC6, 8'hD6, 8'hDE, 8'h7C, 8'h06};   // Char 081 (Q)
            "R": data = {8'hFC, 8'h66, 8'h66, 8'h7C, 8'h66, 8'h66, 8'hE6, 8'h00};   // Char 082 (R)
            "S": data = {8'h7C, 8'hC6, 8'hC0, 8'h7C, 8'h06, 8'hC6, 8'h7C, 8'h00};   // Char 083 (S)
            "T": data = {8'h7E, 8'h5A, 8'h5A, 8'h18, 8'h18, 8'h18, 8'h3C, 8'h00};   // Char 084 (T)
            "U": data = {8'hC6, 8'hC6, 8'hC6, 8'hC6, 8'hC6, 8'hC6, 8'h7C, 8'h00};   // Char 085 (U)
            "V": data = {8'hC6, 8'hC6, 8'hC6, 8'hC6, 8'h6C, 8'h38, 8'h10, 8'h00};   // Char 086 (V)
            "W": data = {8'hC6, 8'hC6, 8'hD6, 8'hFE, 8'hEE, 8'hC6, 8'h82, 8'h00};   // Char 087 (W)
            "X": data = {8'hC6, 8'h6C, 8'h38, 8'h38, 8'h38, 8'h6C, 8'hC6, 8'h00};   // Char 088 (X)
            "Y": data = {8'h66, 8'h66, 8'h66, 8'h3C, 8'h18, 8'h18, 8'h3C, 8'h00};   // Char 089 (Y)
            "Z": data = {8'hFE, 8'hC6, 8'h8C, 8'h18, 8'h32, 8'h66, 8'hFE, 8'h00};   // Char 090 (Z)
            default: data = {16{1'b1}};                                             // Unknown character
        endcase
    end
endmodule
