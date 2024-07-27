`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 15:59:48
// Design Name: 
// Module Name: encoder_tb
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


module encoder_tb(

    );
    reg [7:0] d;
    reg en;
    wire [2:0]b;
    
    encoder en1(d,en,b);
    
    initial
    begin
    en=1'b1;
    #10
    en=1'b0;
    d=8'b00000000;
    #10
    d=8'b00000001;
    #10
    d=8'b00000010;
    #10
    d=8'b00000100;
    #10
    d=8'b00001000;
    #10
    d=8'b00010000;
    #10
    d=8'b00100000;
    #10
    d=8'b01000000;
    #30 $finish;
    end

endmodule
