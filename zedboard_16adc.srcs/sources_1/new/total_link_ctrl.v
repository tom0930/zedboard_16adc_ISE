`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/20 17:35:41
// Design Name: 
// Module Name: total_link_ctrl
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


module total_link_ctrl(
    input clk, rstn,
        
    input        link7_err,
    input [4:0]  link7_channel,
    input [95:0] link7_data,
    output [3:0] link7,
    
    output [15:0] link_err,
    
    
	output reg  s00_axis_tready,
	input wire [31 : 0] s00_axis_tdata,
	input wire  s00_axis_tlast,
	input wire  s00_axis_tvalid,
	
	output reg  s01_axis_tready,
	input wire [31 : 0] s01_axis_tdata,
	input wire  s01_axis_tlast,
	input wire  s01_axis_tvalid,
	
	output reg  s02_axis_tready,
	input wire [31 : 0] s02_axis_tdata,
	input wire  s02_axis_tlast,
	input wire  s02_axis_tvalid,
	
	output reg  s03_axis_tready,
	input wire [31 : 0] s03_axis_tdata,
	input wire  s03_axis_tlast,
	input wire  s03_axis_tvalid,
	
	
	input wire  m00_axis_tready,
	output reg [31 : 0] m00_axis_tdata,
	output reg  m00_axis_tlast,
	output reg  m00_axis_tvalid,
	
	input wire  m01_axis_tready,
	output reg [31 : 0] m01_axis_tdata,
	output reg  m01_axis_tlast,
	output reg  m01_axis_tvalid,
	
	input wire  m02_axis_tready,
	output reg [31 : 0] m02_axis_tdata,
	output reg  m02_axis_tlast,
	output reg  m02_axis_tvalid,
	
	input wire  m03_axis_tready,
	output reg [31 : 0] m03_axis_tdata,
	output reg  m03_axis_tlast,
	output reg  m03_axis_tvalid
		           
    );
    
    assign link_err = {16{link7_err}};
    
    assign link7 = 4'd7;

    
    reg [11:0] data_mem [4095:0];
    
    always @ (posedge clk) begin
        data_mem [{4'd7, 3'd0, link7_channel}] <= link7_data[11:0];
        data_mem [{4'd7, 3'd1, link7_channel}] <= link7_data[23:12];
        data_mem [{4'd7, 3'd2, link7_channel}] <= link7_data[35:24];
        data_mem [{4'd7, 3'd3, link7_channel}] <= link7_data[47:36];
        data_mem [{4'd7, 3'd4, link7_channel}] <= link7_data[59:48];
        data_mem [{4'd7, 3'd5, link7_channel}] <= link7_data[71:60];
        data_mem [{4'd7, 3'd6, link7_channel}] <= link7_data[83:72];
        data_mem [{4'd7, 3'd7, link7_channel}] <= link7_data[95:84];
    end
    
    always @ (posedge clk) begin
        if(~rstn) begin
            s00_axis_tready <= 0;
            m00_axis_tdata <= 0;
            m00_axis_tlast <= 0;
            m00_axis_tvalid <= 0;
        end else begin
            s00_axis_tready <= m00_axis_tready;
            m00_axis_tdata <= {4'b0000, data_mem[s00_axis_tdata[31:16]], 4'b0000, data_mem[s00_axis_tdata[15:0]]};
            m00_axis_tlast <= s00_axis_tlast;
            m00_axis_tvalid <= s00_axis_tvalid;
        end
    end
    
    always @ (posedge clk) begin
        if(~rstn) begin
            s01_axis_tready <= 0;
            m01_axis_tdata <= 0;
            m01_axis_tlast <= 0;
            m01_axis_tvalid <= 0;
        end else begin
            s01_axis_tready <= m01_axis_tready;
            m01_axis_tdata <= {4'b0000, data_mem[s01_axis_tdata[31:16]], 4'b0000, data_mem[s01_axis_tdata[15:0]]};
            m01_axis_tlast <= s01_axis_tlast;
            m01_axis_tvalid <= s01_axis_tvalid;
        end
    end
    
    always @ (posedge clk) begin
        if(~rstn) begin
            s02_axis_tready <= 0;
            m02_axis_tdata <= 0;
            m02_axis_tlast <= 0;
            m02_axis_tvalid <= 0;
        end else begin
            s02_axis_tready <= m02_axis_tready;
            m02_axis_tdata <= {4'b0000, data_mem[s02_axis_tdata[31:16]], 4'b0000, data_mem[s02_axis_tdata[15:0]]};
            m02_axis_tlast <= s02_axis_tlast;
            m02_axis_tvalid <= s02_axis_tvalid;
        end
    end
    
    always @ (posedge clk) begin
        if(~rstn) begin
            s03_axis_tready <= 0;
            m03_axis_tdata <= 0;
            m03_axis_tlast <= 0;
            m03_axis_tvalid <= 0;
        end else begin
            s03_axis_tready <= m03_axis_tready;
            m03_axis_tdata <= {4'b0000, data_mem[s03_axis_tdata[31:16]], 4'b0000, data_mem[s03_axis_tdata[15:0]]};
            m03_axis_tlast <= s03_axis_tlast;
            m03_axis_tvalid <= s03_axis_tvalid;
        end
    end 
      
    
endmodule
