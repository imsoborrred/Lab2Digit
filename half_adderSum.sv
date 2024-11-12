`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 03:28:04 PM
// Design Name: 
// Module Name: half_adderSum
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Testbench for half-adder module
// 
//////////////////////////////////////////////////////////////////////////////////

module half_adderSum;

    logic a, b;
    logic sum, carry;

    // Instantiate the half_adder module
    half_adder dut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        a = 0; b = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
        a = 0; b = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
        a = 1; b = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
        a = 1; b = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b", $time, a, b, sum, carry);
    end

endmodule

