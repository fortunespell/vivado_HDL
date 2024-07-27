`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 15:22:18
// Design Name: 
// Module Name: demux14
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


module demux14(
    input i,
    input [1:0] s,
    output reg [3:0] y
    );
    always @ *
    begin
    y=4'b0100;
    case(s)
        2'b00:y[0]=i;
        2'b01:y[0]=i;
        2'b10:y[0]=i;
        2'b11:y[0]=i;
    endcase
    end
endmodule
