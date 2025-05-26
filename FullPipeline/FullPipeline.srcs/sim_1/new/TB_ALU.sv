`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2025 11:20:12 PM
// Design Name: 
// Module Name: TB_ALU
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


module TB_ALU;

    ALU dut(
    .input1(),
    .input2(),
    .aluFunction(),
    .output1(),
    .zeroFlag()
    );

    initial begin
        $display("ff");
        $finish;
        
    end
endmodule
