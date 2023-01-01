`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 19:15:12
// Design Name: 
// Module Name: Freq_Divide_tb
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


module Freq_Divide_tb;
    reg clk,rst;
    reg [1:0] select;
    wire out;

    Frequency_divide DUT(.clk(clk),.rst(rst),.select(select),.out_clk(out));

    always #5 clk = ~clk;

    initial begin
        clk=1'b0;
        rst=1'b1;
        #10 rst=1'b0;
        select=2'b00;
        #10000 $finish;
    end
endmodule
