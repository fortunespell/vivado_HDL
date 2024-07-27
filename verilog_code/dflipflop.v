`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 15:51:50
// Design Name: 
// Module Name: dflipflop
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


module dflipflop(
    input clk,
    input rst,
    input din,
    output reg q
    );
    always @(posedge clk or posedge rst)
    begin
    if(rst) q<=1'b0;
    else q<=din;
    end
    
endmodule
