`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 15:53:57
// Design Name: 
// Module Name: dflipflop_tb
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


module dflipflop_tb(

    );
    reg clk;
    reg rst;
    reg din;
    wire q;
    
    dflipflop d111(clk,rst,din,q);
    
    initial
    clk=1'b0;
    always
    #5 clk=~clk;
   initial
    begin
    rst=1'b1;
    #10 rst=1'b0;
    #10 din=1'b0;
    #10 din=1'b1;
    #50$finish;
    end
endmodule
