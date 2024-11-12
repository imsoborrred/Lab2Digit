`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:17:09 PM
// Design Name: 
// Module Name: adder4sub
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


module adder4sub(
    input [3:0] A,
    input [3:0] B,
    input c_in,
    input M,
    
    output [3:0] S,
    output c_out
    );
    logic [3:1] C;
    logic [3:0] X;
    
    
    // Stage0
    xorgate xor0(.f(X[0]), .a(M), .b(B[0]));
    full_adder f0(A[0], X[0], M, S[0], C[1]);
    // Stage1
    xorgate xor1(.f(X[1]), .a(M), .b(B[1]));
    full_adder f1(A[1], X[1], C[1], S[1], C[2]);
    // Stage2
    xorgate xor2(.f(X[2]), .a(M), .b(B[2]));
    full_adder f2(A[2], X[2], C[2], S[2], C[3]);
    // Stage3
    xorgate xor3(.f(X[3]), .a(M), .b(B[3]));
    full_adder f3(A[3], X[3], C[3], S[3], c_out);

endmodule
