`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 16:25:30
// Design Name: 
// Module Name: encoderpri_tb
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


module encoderpri_tb(

    );
    reg [7:0] d;
    reg en;
    wire [2:0]b;
    
    encoderpri enp1(d,en,b);
    
    initial
    begin
    en=1'b1;
    #10
    en=1'b0;
    d=8'b00000000;
    #10
    d=8'b00000001;
    #10
    d=8'b00000011;
    #10
    d=8'b00000101;
    #10
    d=8'b00001001;
    #10
    d=8'b00011111;
    #10
    d=8'b00100010;
    #10
    d=8'b011111111;
    #30 $finish;
    end
endmodule
