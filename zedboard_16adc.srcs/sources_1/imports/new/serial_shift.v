`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/28 17:26:55
// Design Name: 
// Module Name: serial_shift
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


module serial_shift(
    input clk,
    input rstn,
    input data_in,
    output reg Q0,
    output reg Q1,
    output reg Q2,
    output reg Q3,
    output reg Q4,
    output reg Q5,
    output reg Q6,
    output reg Q7
    );
    
always@(posedge clk)begin
    if(~rstn)begin
        Q0 <= 0;
        Q1 <= 0;
        Q2 <= 0;
        Q3 <= 0;
        Q4 <= 0;
        Q5 <= 0;
        Q6 <= 0;
        Q7 <= 0;
    end else begin
        Q0 <= data_in;
        Q1 <= Q0;
        Q2 <= Q1;
        Q3 <= Q2;
        Q4 <= Q3;
        Q5 <= Q4;
        Q6 <= Q5;
        Q7 <= Q6;    
    end
end    
    
endmodule
