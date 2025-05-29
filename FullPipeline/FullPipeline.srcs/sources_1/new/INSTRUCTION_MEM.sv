`timescale 1ns / 1ps


module INSTRUCTION_MEM(
        input logic [INSTRUCTION-1:0] pc_in,
        output logic [INSTRUCTION-1:0] pc_out
        );
        
        logic [INSTRUCTION-1:0] IM [2**32];
        
        always_comb begin
        
            pc_out = IM[pc_in];
        end
        
        
endmodule
