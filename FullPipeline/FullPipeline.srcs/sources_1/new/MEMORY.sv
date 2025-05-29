`timescale 1ns / 1ps
import parms ::*;

module MEMORY(
            input logic [DATABUS-1:0] add_in,
            input logic [DATABUS-1:0] data_in,
            input logic mw,
            input logic mr,
            input logic clk,
            
            output logic [DATABUS-1:0] mem_out
            
            
        );
        
        logic [INSTRUCTION-1:0] MEM [2**32 - 1:0];
        
        
        
        always_ff @(posedge clk) begin
            if(mw)
                MEM[add_in] <= data_in;
            else if(mr)
                mem_out <= MEM[add_in];
        end
        
        endmodule
