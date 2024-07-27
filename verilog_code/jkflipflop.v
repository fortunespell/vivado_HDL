`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2023 14:37:12
// Design Name: 
// Module Name: jkflipflop
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


module jkflipflop(
    input clk,
    input reset,
    input preset,
    input [1:0] jk,
    output reg q
    );
    always @(negedge clk)
    if(reset) q<=1'b0;
        else if (preset) q<=1'b1;
        else case(jk)
        2'b00:q<=q;
        2'b01:q<=1'b0;
        2'b10:q<=1'b1;
        2'b11:q<=~q;
        default: q<=1'bZ;
        endcase
endmodule
