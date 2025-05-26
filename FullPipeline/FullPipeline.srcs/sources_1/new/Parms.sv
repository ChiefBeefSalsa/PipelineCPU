`timescale 1ns / 1ps

package parms;

    parameter ADDRESSBUS    = 32;
    parameter DATABUS       = 32;
    
    parameter INSTRUCTION   = 32;
    parameter REGSIZE       = 4;
    parameter OPCODE        = 6;
    parameter IMM           = 18;
    parameter J             = 26;
    parameter FN            = 6;
    
    parameter nop           = 6'b000000;
    parameter add           = 6'b000001;
    parameter sub           = 6'b000010;
    parameter mul           = 6'b000011;
    parameter div           = 6'b000100;
    parameter exp           = 6'b000101;
    parameter mod           = 6'b000110;
    
    parameter eq            = 6'b000111;
    parameter gte           = 6'b001000;
    parameter lte           = 6'b001001;
    parameter gt            = 6'b001010;
    parameter lt            = 6'b001011;
    parameter neq           = 6'b001100;
    
    parameter b_and         = 6'b001101;
    parameter b_or          = 6'b001110;
    
    parameter shift_l       = 6'b001111;
    parameter shift_r       = 6'b010000;
    
    
    
    
    
    
endpackage 