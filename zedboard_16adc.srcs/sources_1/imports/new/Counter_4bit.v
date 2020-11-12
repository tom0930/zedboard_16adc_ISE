`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/28 15:57:40
// Design Name: 
// Module Name: Counter_4bit
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


module Counter_4bit(
    input clk,
    input [3:0] value,
    input rstn,
    input enp,
    input ent,
    input loadn,
    output out0,
    output out1,
    output out2,
    output out3
    );

reg [3:0] out;

assign out3 = out[3];
assign out2 = out[2];
assign out1 = out[1];
assign out0 = out[0];

always@(posedge clk)begin
    if(~rstn)
        out <= 0;
    else begin
        if(loadn==0)
            out <= value;
        else if(enp==1 && ent==1 && loadn==1)
            out <= out + 1;
        else if((enp==0 && ent==1 && loadn==1) || (enp==0 && ent==0 && loadn==1) || (enp==1 && ent==0 && loadn==1))
            out <= out;
        else
            out <= 0;
    end            
end

endmodule
