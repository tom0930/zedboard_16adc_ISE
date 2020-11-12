`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/28 15:57:40
// Design Name: 
// Module Name: D_flip_flops_4
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


module D_flip_flops_4(
    input clk,
    input rstn,
    input D1,
    input D2,
    input D3,
    input D4,
    output reg Q1,
    output reg Q2,
    output reg Q3,
    output reg Q4,
    output reg Q1B,
    output reg Q2B,
    output reg Q3B,
    output reg Q4B
    );

always@(posedge clk)begin
    if(~rstn)begin
        Q1  <= 0;
        Q1B <= 0;
        Q2  <= 0;
        Q2B <= 0;
        Q3  <= 0;
        Q3B <= 0;
        Q4  <= 0;
        Q4B <= 0;
    end else begin
        Q1  <= D1;
        Q1B <= ~D1;
        Q2  <= D2;
        Q2B <= ~D2;
        Q3  <= D3;
        Q3B <= ~D3;
        Q4  <= D4;
        Q4B <= ~D4;        
    end
end 

endmodule
