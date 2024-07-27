`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 15:37:07
// Design Name: 
// Module Name: bcdtb
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


module bcdtb(

    );
    reg clk;
    reg rst;
    wire [3:0]count;
    
    bcdcounter bcd23(clk,rst,count);
    
    initial
    clk=1'b0;
    always
    #10 clk=~clk;
    initial
    begin
    rst=1;
    #20 rst=0;
    end
endmodule
