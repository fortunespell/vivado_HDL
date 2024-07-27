`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 15:20:51
// Design Name: 
// Module Name: demuxx_tb
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


module demuxx_tb(

    );
    reg i;
    reg [1:0] s;
    wire [3:0] y;
    
    demux14 d1(i,s,y);
    initial
    begin
    i=1'b0;
    s=2'b00;
    #10
    s=2'b01;
    #10
    s=2'b10;
    #10
    s=2'b11;
    #30 $finish;
    end
endmodule
