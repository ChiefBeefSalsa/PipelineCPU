`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////
import parms::*;

module REGISTERFILE(
        input logic [REGSIZE-1:0] rs,
        input logic [REGSIZE-1:0] rt,
        input logic [REGSIZE-1:0] rd,
        input logic [DATABUS-1:0] writeData,
        input logic enable, 
        input logic clk,
        
        output logic [DATABUS-1:0] read1,
        output logic [DATABUS-1:0] read2
    );
    
    logic [DATABUS-1:0] register_file [15:0];
    
    always_comb begin
        if(rs == 0)
            read1 = 32'b0;
        else
            read1 = register_file[rs];
            
        if(rt == 0)
            read2 = 32'b0;
        else 
            read2 = register_file[rt];
            
    end
    
    always_ff @(posedge clk) begin
        if(enable && (rd!=0))
            register_file[rd] <= writeData;
    end
    
    
endmodule
