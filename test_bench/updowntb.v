`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 14:54:08
// Design Name: 
// Module Name: updowntb
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


module updowntb();
    wire [3:0]count;
    reg rst;
    reg clk;
    
    updown u23(count,rst,clk);
    
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
