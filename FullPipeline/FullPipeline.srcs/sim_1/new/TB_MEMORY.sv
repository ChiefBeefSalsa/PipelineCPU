`timescale 1ns / 1ps

module TB_MEMORY;
    
    logic [DATABUS-1:0]add_in;
    logic [DATABUS-1:0]data_in;
    logic mw;
    logic mr;
    logic clk;
    logic [DATABUS-1:0] mem_out;
        
    
    always #5 clk = ~clk;
    
    MEMORY dut(
        
        .add_in(add_in),
        .data_in(data_in),
        .mw(mw),
        .mr(mr),
        .clk(clk),
        .mem_out(mem_out)
    );
    
    
    initial begin
        $display("START");
        clk = 0;
        #10;
        add_in = 32'b0;
        data_in = 32'hF;
        mw = 1;
        #10
        add_in = 32'b0;
        mw = 0;
        mr = 1;
        #10;
        $finish;
    end

endmodule
