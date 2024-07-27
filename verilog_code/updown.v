`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.02.2023 14:45:52
// Design Name: 
// Module Name: updown
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


module updown(
    output reg [3:0]count,
    input rst,
    input clk
    );
    always @(posedge clk)
    if(rst)
    count<=4'b0000;
    else
    count<=count+4'b0001;
endmodule    
    
    
