`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 06:12:35 PM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input logic a,
    input logic b,
    input logic cin,
    output logic sum,
    output logic carry
);
    // Intermediate signals
    logic sum2, carry2, carry3;

    // Instantiate two half adders
    half_adder G1 (.a(a), .b(b), .sum(sum2), .carry(carry2));
    half_adder G2 (.a(sum2), .b(cin), .sum(sum), .carry(carry3));

    // Final carry is the OR of the two half adder carries
    assign carry = carry2 | carry3;
endmodule

