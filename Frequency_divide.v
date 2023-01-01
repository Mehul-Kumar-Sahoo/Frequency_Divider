`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 19:05:19
// Design Name: 
// Module Name: Frequency_divide
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


module Frequency_divide(
    input clk,rst,
    input [1:0] select,
    output reg out_clk
);
    wire [3:0] temp;
    Counter_10bit ins1(clk,rst,temp[0]);
    Counter_10bit ins2(temp[0],rst,temp[1]);
    Counter_10bit ins3(temp[1],rst,temp[2]);
    Counter_10bit ins4(temp[2],rst,temp[3]);

    always @(posedge clk) begin
        case(select)
            2'b00:out_clk<=temp[0];
            2'b01:out_clk<=temp[1];
            2'b10:out_clk<=temp[2];
            2'b11:out_clk<=temp[3];
        endcase
    end
endmodule
