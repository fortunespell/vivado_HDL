`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 15:43:56
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb(

    );
    reg [1:0] i;
    wire [3:0] y;
    
    decoder d11(i,y);
    initial
    begin
    i=2'b00;
    #10
    i=2'b01;
    #10
    i=2'b10;
    #10
    i=2'b11;
    #30 $finish;
    end
endmodule
