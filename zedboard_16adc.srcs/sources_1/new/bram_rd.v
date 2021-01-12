`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/01/06 09:58:04
// Design Name: 
// Module Name: bram_rd
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


module bram_rd(
    input clk,
    input rstn,
    
    output reg      s_axis_tready,
    input [31:0]    s_axis_tdata,
    input           s_axis_tlast,
    input           s_axis_tvalid,
    
    input               m_axis_tready,
    output reg [31:0]   m_axis_tdata,
    output reg          m_axis_tlast,
    output reg          m_axis_tvalid,         

    output reg [10:0]   addr0a,
    input  [31:0]       data0a,  
    output reg [10:0]   addr1a,
    input  [31:0]       data1a,     
    output reg [10:0]   addr2a,
    input  [31:0]       data2a, 
    output reg [10:0]   addr3a,
    input  [31:0]       data3a, 
    output reg [10:0]   addr4a,
    input  [31:0]       data4a, 
    output reg [10:0]   addr5a,
    input  [31:0]       data5a, 
    output reg [10:0]   addr6a,
    input  [31:0]       data6a, 
    output reg [10:0]   addr7a,
    input  [31:0]       data7a, 
    output reg [10:0]   addr8a,
    input  [31:0]       data8a, 
    output reg [10:0]   addr9a,
    input  [31:0]       data9a, 
    output reg [10:0]   addr10a,
    input  [31:0]       data10a, 
    output reg [10:0]   addr11a,
    input  [31:0]       data11a, 
    output reg [10:0]   addr12a,
    input  [31:0]       data12a,     
    output reg [10:0]   addr13a,
    input  [31:0]       data13a,     
    output reg [10:0]   addr14a,
    input  [31:0]       data14a,     
    output reg [10:0]   addr15a,
    input  [31:0]       data15a,      
    output reg [10:0]   addr0b,
    input  [31:0]       data0b,  
    output reg [10:0]   addr1b,
    input  [31:0]       data1b,     
    output reg [10:0]   addr2b,
    input  [31:0]       data2b, 
    output reg [10:0]   addr3b,
    input  [31:0]       data3b, 
    output reg [10:0]   addr4b,
    input  [31:0]       data4b, 
    output reg [10:0]   addr5b,
    input  [31:0]       data5b, 
    output reg [10:0]   addr6b,
    input  [31:0]       data6b, 
    output reg [10:0]   addr7b,
    input  [31:0]       data7b, 
    output reg [10:0]   addr8b,
    input  [31:0]       data8b, 
    output reg [10:0]   addr9b,
    input  [31:0]       data9b, 
    output reg [10:0]   addr10b,
    input  [31:0]       data10b, 
    output reg [10:0]   addr11b,
    input  [31:0]       data11b, 
    output reg [10:0]   addr12b,
    input  [31:0]       data12b,     
    output reg [10:0]   addr13b,
    input  [31:0]       data13b,     
    output reg [10:0]   addr14b,
    input  [31:0]       data14b,     
    output reg [10:0]   addr15b,
    input  [31:0]       data15b        
    );
    
    reg s_axis_tlast_bf,s_axis_tvalid_bf,m_axis_tready_bf;
    reg [15:0] rd_data1,rd_data0;
    reg [1:0] state; 
    
    always@(posedge clk)begin
        if(~rstn)begin
            s_axis_tlast_bf <= 0;
            s_axis_tvalid_bf <= 0;
            m_axis_tready_bf <= 0;
            m_axis_tdata <= 0;
        end else begin
            s_axis_tlast_bf <= s_axis_tlast;
            s_axis_tvalid_bf <= s_axis_tvalid;
            m_axis_tready_bf <= m_axis_tready;
            m_axis_tdata <= {rd_data1,rd_data0};
            m_axis_tlast <= s_axis_tvalid_bf;
            m_axis_tvalid <= s_axis_tvalid_bf;
            s_axis_tready <= m_axis_tready_bf;
        end
    end

    always@(posedge clk)begin
        if(~rstn) begin
            addr0a <= 0;
            addr1a <= 0;
            addr2a <= 0;
            addr3a <= 0;
            addr4a <= 0;
            addr5a <= 0;
            addr6a <= 0;
            addr7a <= 0;
            addr8a <= 0;
            addr9a <= 0;
            addr10a <= 0;
            addr11a <= 0;
            addr12a <= 0;
            addr13a <= 0;
            addr14a <= 0;
            addr15a <= 0;
            rd_data1 <= 0;
        end else begin
            case (s_axis_tdata[27:24])
                4'd0:begin
                    addr0a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data0a[31:16];
                    else
                        rd_data1 <= data0a[15:0];    
                end
                4'd1:begin
                    addr1a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data1a[31:16];
                    else
                        rd_data1 <= data1a[15:0];   
                end 
                4'd2:begin
                    addr2a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data2a[31:16];
                    else
                        rd_data1 <= data2a[15:0];   
                end  
                4'd3:begin
                    addr3a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data3a[31:16];
                    else
                        rd_data1 <= data3a[15:0];   
                end  
                4'd4:begin
                    addr4a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data4a[31:16];
                    else
                        rd_data1 <= data4a[15:0];   
                end  
                4'd5:begin
                    addr5a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data5a[31:16];
                    else
                        rd_data1 <= data5a[15:0];   
                end  
                4'd6:begin
                    addr6a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data6a[31:16];
                    else
                        rd_data1 <= data6a[15:0];   
                end  
                4'd7:begin
                    addr7a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data7a[31:16];
                    else
                        rd_data1 <= data7a[15:0];   
                end  
                4'd8:begin
                    addr8a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data8a[31:16];
                    else
                        rd_data1 <= data8a[15:0];   
                end  
                4'd9:begin
                    addr9a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data9a[31:16];
                    else
                        rd_data1 <= data9a[15:0];   
                end  
                4'd10:begin
                    addr10a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data10a[31:16];
                    else
                        rd_data1 <= data10a[15:0];   
                end  
                4'd11:begin
                    addr11a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data11a[31:16];
                    else
                        rd_data1 <= data11a[15:0];   
                end  
                4'd12:begin
                    addr12a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data12a[31:16];
                    else
                        rd_data1 <= data12a[15:0];   
                end  
                4'd13:begin
                    addr13a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data13a[31:16];
                    else
                        rd_data1 <= data13a[15:0];   
                end  
                4'd14:begin
                    addr14a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data14a[31:16];
                    else
                        rd_data1 <= data14a[15:0];   
                end      
                4'd15:begin
                    addr15a <= s_axis_tdata[27:17];
                    if(s_axis_tdata[16])
                        rd_data1 <= data15a[31:16];
                    else
                        rd_data1 <= data15a[15:0];   
                end      
                default:begin
                    rd_data1 <= 0;
                end
            endcase                
        end
    end
 
    always@(posedge clk)begin
        if(~rstn) begin
            addr0b <= 0;
            addr1b <= 0;
            addr2b <= 0;
            addr3b <= 0;
            addr4b <= 0;
            addr5b <= 0;
            addr6b <= 0;
            addr7b <= 0;
            addr8b <= 0;
            addr9b <= 0;
            addr10b <= 0;
            addr11b <= 0;
            addr12b <= 0;
            addr13b <= 0;
            addr14b <= 0;
            addr15b <= 0;
            rd_data0 <= 0;
        end else begin
            case (s_axis_tdata[11:8])
                4'd0:begin
                    addr0b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data0b[31:16];
                    else
                        rd_data0 <= data0b[15:0];
                end
                4'd1:begin
                    addr1b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data1b[31:16];
                    else
                        rd_data0 <= data1b[15:0];   
                end 
                4'd2:begin
                    addr2b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data2b[31:16];
                    else
                        rd_data0 <= data2b[15:0];  
                end  
                4'd3:begin
                    addr3b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data3b[31:16];
                    else
                        rd_data0 <= data3b[15:0];
                end  
                4'd4:begin
                    addr4b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data4b[31:16];
                    else
                        rd_data0 <= data4b[15:0];
                end  
                4'd5:begin
                    addr5b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data5b[31:16];
                    else
                        rd_data0 <= data5b[15:0];
                end  
                4'd6:begin
                    addr6b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data6b[31:16];
                    else
                        rd_data0 <= data6b[15:0];
                end  
                4'd7:begin
                    addr7b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data7b[31:16];
                    else
                        rd_data0 <= data7b[15:0];
                end  
                4'd8:begin
                    addr8b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data8b[31:16];
                    else
                        rd_data0 <= data8b[15:0];
                end  
                4'd9:begin
                    addr9b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data9b[31:16];
                    else
                        rd_data0 <= data9b[15:0];
                end  
                4'd10:begin
                    addr10b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data10b[31:16];
                    else
                        rd_data0 <= data10b[15:0];
                end  
                4'd11:begin
                    addr11b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data11b[31:16];
                    else
                        rd_data0 <= data11b[15:0];
                end  
                4'd12:begin
                    addr12b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data12b[31:16];
                    else
                        rd_data0 <= data12b[15:0];
                end  
                4'd13:begin
                    addr13b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data13b[31:16];
                    else
                        rd_data0 <= data13b[15:0];
                end  
                4'd14:begin
                    addr14b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data14b[31:16];
                    else
                        rd_data0 <= data14b[15:0];
                end      
                4'd15:begin
                    addr15b <= s_axis_tdata[11:1];
                    if(s_axis_tdata[0])
                        rd_data0 <= data15b[31:16];
                    else
                        rd_data0 <= data15b[15:0];
                end      
                default:begin
                    rd_data0 <= 0;
                end
            endcase                
        end
    end 
    
endmodule
