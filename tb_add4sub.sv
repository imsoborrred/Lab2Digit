`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:27:12 PM
// Design Name: 
// Module Name: tb_add4sub
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


module tb_adder4sub;

    // Declare testbench signals
    logic [3:0] A, B, S;
    logic c_in, M;
    logic [3:1] C;
    
    //Instantiate the andgate module
    adder4sub a4s(A, B, c_in, M, S, c_out);
    
    // Testbench Logic
    initial begin
        // Display header
        $display("Time\t A\t B\t c_in\t M\t S\t c_out");
        $display("------------------------------------------");
        
        // Apply test vectors with $display statements
        // Case 1
        A = 4'b0000; B = 4'b0000; c_in = 0; M = 0; #10;
        // Display the value of a, b, and f alog with time
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 2
        A = 4'b0001; B = 4'b0001; c_in = 0; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 3
        A = 4'b0011; B = 4'b0010; c_in = 1; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 4
        A = 4'b0011; B = 4'b0011; c_in = 1; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 5
        A = 4'b0111; B = 4'b0110; c_in = 0; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 6        
        A = 4'b1111; B = 4'b1010; c_in = 1; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 7
        A = 4'b1011; B = 4'b0010; c_in = 1; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 8
        A = 4'b1000; B = 4'b0111; c_in = 0; M = 0; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 9
        A = 4'b1000; B = 4'b0011; c_in = 1; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
        // Case 10
        A = 4'b1001; B = 4'b0111; c_in = 1; M = 1; #10;
        $display("%0t\t %b\t %b\t %b\t %b\t %b\T %b", $time, A, B, c_in, M, S, c_out);
    
        // End simulation
        $finish;    
    end

endmodule
