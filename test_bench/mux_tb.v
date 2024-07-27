`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2023 14:51:22
// Design Name: 
// Module Name: mux_tb
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


module mux_tb(

    );
    reg [7:0] i;
    reg [2:0] s;
    wire y;
    mux m1(i,s,y);
    
    initial
    begin
    i=8'b00000011;s=3'b000;
    #10
    s=3'b001;
    #10
    s=3'b010;
    #10
    s=3'b011;
    #10
    s=3'b100;
    #10
    s=3'b101;
    #10
    s=3'b110;
    #10
    s=3'b111;
    #30 $finish;
    end
    
endmodule
