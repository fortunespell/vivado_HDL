`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 14:42:45
// Design Name: 
// Module Name: jk_tb
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


module jk_tb(

    );
    reg clk;
    reg reset;
    reg preset;
    reg [1:0]jk;
    wire q;
    
    jkflipflop jk1(clk,reset,preset,jk,q);
    
    initial
    clk=1'b0;
    always
    #5 clk=~clk;
    initial
    begin
    reset=1'b1;
    #10 reset=1'b0;
    preset=1'b1;
    #10 preset=1'b0;
    #20 jk=2'b01;
    #20 jk=2'b11;
    #20 jk=2'b00;
    #20 jk=2'b10;
    #50$finish;
    end
    
endmodule
