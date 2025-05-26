`timescale 1ns / 1ps


module TB_ALU;
    logic [DATABUS-1:0] input1;
    logic [DATABUS-1:0] input2;
    logic [FN-1:0] fn;
    logic [DATABUS-1:0] output1;
    logic zeroFlag;


    ALU dut(
    .input1(input1),
    .input2(input2),
    .aluFunction(fn),
    .output1(output1),
    .zeroFlag(zeroFlag)
    );
    
    initial begin
        $display("SART SIMULATION");
        #10;
        input1 = 2;
        input2 = 2;
        fn = 1;
        #10;
        
        $finish;
        
    end
endmodule
