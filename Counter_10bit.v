`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 18:48:00
// Design Name: 
// Module Name: Counter_10bit
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


module Counter_10bit(clk,rst,out);
    input clk,rst;
    output reg out=0;
    reg [3:0]count;

    always @(posedge clk) begin
        if(rst) count<=0;
        else begin
            if(count==9) begin
                count<=0;
                out=~out;
            end
            else count<=count+1;
        end
    end
endmodule
