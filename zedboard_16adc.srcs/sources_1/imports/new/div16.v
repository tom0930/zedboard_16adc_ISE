`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/28 16:57:30
// Design Name: 
// Module Name: div16
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


module div16(
    input clk,
    input rstn,
    output clk_div
    );
    
reg [3:0] cnt;

assign clk_div = cnt[3];

always@(posedge clk)begin
    if(~rstn)
        cnt <= 0;
    else
        cnt <= cnt + 1;
end
    
endmodule
