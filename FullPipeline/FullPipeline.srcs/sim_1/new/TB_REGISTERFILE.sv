`timescale 1ns / 1ps


module TB_REGISTERFILE;


    logic [REGSIZE-1:0] rs;
    logic [REGSIZE-1:0] rt;
    logic [REGSIZE-1:0] rd;
    logic [DATABUS-1:0] writeData;
    logic enable;
    logic clk;
    logic [DATABUS-1:0] read1;
    logic [DATABUS-1:0] read2;

    always #5 clk = ~clk;

    
    
    
    REGISTERFILE dut(
        .rs(rs),
        .rt(rt),
        .rd(rd),
        .writeData(writeData),
        .enable(enable),
        .clk(clk),
        .read1(read1),
        .read2(read2)
    );
    
    
    initial begin
        $display("START SIM");
        clk = 0;
        #10;
        enable = 1;
        rd = 1;
        writeData = 64;
        #10;
        rs = 1;
        #10;
        $finish;
    end 


endmodule
