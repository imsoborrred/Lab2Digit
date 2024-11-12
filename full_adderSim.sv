`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 06:39:10 PM
// Design Name: 
// Module Name: full_adderSim
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


 module full_adderSim;
    logic a, b, cin;       // Test inputs
    logic sum, carry;      // Test outputs

    // Instantiate the full adder
    full_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Display header
        $display("Time\t a\t b\t cin\t sum\t carry");
        $display("-------------------------------------");

        // Apply test vectors
        a = 0; b = 0; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 0; b = 0; cin = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 0; b = 1; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 0; b = 1; cin = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 1; b = 0; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 1; b = 0; cin = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 1; b = 1; cin = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);
        a = 1; b = 1; cin = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b", $time, a, b, cin, sum, carry);

        // End simulation
        $finish;
    end
endmodule
