`timescale 1ns / 1ps
import parms ::*;

module ALU(
        input logic [DATABUS-1:0]   input1,
        input logic [DATABUS-1:0]   input2,
        input logic [FN-1:0]        aluFunction,
        
        
        
        
        
        output logic [DATABUS-1:0]  output1,
        output logic                zeroFlag
    );
    
        always_comb begin
            case(aluFunction)
                add:        output1 = input1 + input2;
                sub:        output1 = input1 - input2;
                mul:        output1 = input1 * input2;
                div:        output1 = input1 / input2;
                exp:        output1 = input1 ** input2;
                mod:        output1 = input1 % input2;
                
                eq:         output1 = (input1 == input2) ? 32'b0 : 32'b1; 
                gte:        output1 = (input1 >= input2) ? 32'b0 : 32'b1;
                lte:        output1 = (input1 <= input2) ? 32'b0 : 32'b1;
                gt:         output1 = (input1 > input2) ? 32'b0 : 32'b1;
                lt:         output1 = (input1 < input2) ? 32'b0 : 32'b1;
                neq:        output1 = (input1 != input2) ? 32'b0 : 32'b1;
                
                b_and:      output1 = input1 & input2;
                b_or:       output1 = input1 | input2;
                
                shift_l:    output1 = input1 << 1;
                shift_r:    output1 = input1 >> 1;
                
            
                default :   output1 = 32'b0;
        
            endcase
        end
        
        always_comb begin
            if(output1 == 0)
                zeroFlag = 1;
        end
endmodule
