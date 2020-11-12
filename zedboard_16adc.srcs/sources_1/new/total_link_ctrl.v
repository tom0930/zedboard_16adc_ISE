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
    
    
    input ctrl_index_0, ctrl_index_1, ctrl_index_2, ctrl_index_3,    
 
     
    output [3:0] we_index, we_result,
          
    input [31:0] data_in_index_0,
    output reg en_index_0, 
    output reg [31:0] addr_index_0,
    
    input [31:0] data_in_index_1,
    output reg en_index_1, 
    output reg [31:0] addr_index_1,
    
    input [31:0] data_in_index_2,
    output reg en_index_2, 
    output reg [31:0] addr_index_2,
    
    input [31:0] data_in_index_3,
    output reg en_index_3, 
    output reg [31:0] addr_index_3,
            
            
    output reg [31:0] data_out_result_0,
    output reg en_result_0, 
    output reg [31:0] addr_result_0,
    
    output reg [31:0] data_out_result_1,
    output reg en_result_1, 
    output reg [31:0] addr_result_1,
    
    output reg [31:0] data_out_result_2,
    output reg en_result_2, 
    output reg [31:0] addr_result_2,
    
    output reg [31:0] data_out_result_3,
    output reg en_result_3, 
    output reg [31:0] addr_result_3
    
    );
    
    assign link_err = {16{link7_err}};
    
    assign link7 = 4'd7;
    
    assign we_index = 4'd0;
    assign we_result = 4'hf;
    
    reg [11:0] data_mem [4095:0];
    
    reg trig1_index_0, trig2_index_0;
    reg trig1_index_1, trig2_index_1;
    reg trig1_index_2, trig2_index_2;
    reg trig1_index_3, trig2_index_3; 
    wire start_index_0, start_index_1, start_index_2, start_index_3;
    
    assign start_index_0 = ~trig2_index_0 & trig1_index_0;
    assign start_index_1 = ~trig2_index_1 & trig1_index_1;
    assign start_index_2 = ~trig2_index_2 & trig1_index_2;
    assign start_index_3 = ~trig2_index_3 & trig1_index_3;
    
    reg [3:0] state_0, state_1, state_2, state_3;
    reg [31:0] len_index_0, len_index_1, len_index_2, len_index_3;
    
    parameter idel       = 4'b0000,
              len_check  = 4'b0001,
              wd_data    = 4'b0010,
              loop       = 4'b0011;
    
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
        trig1_index_0 <= ctrl_index_0;
        trig2_index_0 <= trig1_index_0;
        
        trig1_index_1 <= ctrl_index_1;
        trig2_index_1 <= trig1_index_1;
        
        trig1_index_2 <= ctrl_index_2;
        trig2_index_2 <= trig1_index_2;
        
        trig1_index_3 <= ctrl_index_3;
        trig2_index_3 <= trig1_index_3;
    end
    
    always @ (posedge clk) begin
        data_out_result_0 <= data_mem[data_in_index_0];
        if(~rstn) begin
            state_0 <= idel;
        end else begin
            case(state_0)
                idel: begin   
                    len_index_0 <= 12'd0;
                                     
                    addr_index_0 <= 32'd0;
                    
                    en_result_0 <= 1'b0;
                    addr_result_0 <= 32'd0;
                    
                    if(start_index_0) begin
                        en_index_0 <= 1'b1;
                        state_0 <= len_check;
                    end else begin
                        en_index_0 <= 1'b0;
                        state_0 <= idel;    
                    end                
                end
                
                len_check: begin
                    len_index_0 <= data_in_index_0;
                    addr_index_0 <= addr_index_0 + 1'b1;
                    state_0 <= wd_data;
                end
  
                wd_data: begin
                    en_result_0 <= 1'b1;
                    state_0 <= loop;
                end
                
                loop: begin                    
                    addr_index_0 <= addr_index_0 + 1'b1;
                    addr_result_0 <= addr_result_0 + 1'b1;
                    if(len_index_0 > 0) begin
                        len_index_0 <= len_index_0 - 1'b1;
                        state_0 <= loop;
                    end else begin
                        len_index_0 <= len_index_0;
                        state_0 <= idel;
                    end                    
                end                               
            endcase
        end    
    end
    
    always @ (posedge clk) begin
        data_out_result_1 <= data_mem[data_in_index_1];
        if(~rstn) begin
            state_1 <= idel;
        end else begin
            case(state_1)
                idel: begin   
                    len_index_1 <= 12'd0;
                                     
                    addr_index_1 <= 32'd0;
                    
                    en_result_1 <= 1'b0;
                    addr_result_1 <= 32'd0;
                    
                    if(start_index_1) begin
                        en_index_1 <= 1'b1;
                        state_1 <= len_check;
                    end else begin
                        en_index_1 <= 1'b0;
                        state_1 <= idel;    
                    end                
                end
                
                len_check: begin
                    len_index_1 <= data_in_index_1;
                    addr_index_1 <= addr_index_1 + 1'b1;
                    state_1 <= wd_data;
                end
  
                wd_data: begin
                    en_result_1 <= 1'b1;
                    state_1 <= loop;
                end
                
                loop: begin                    
                    addr_index_1 <= addr_index_1 + 1'b1;
                    addr_result_1 <= addr_result_1 + 1'b1;
                    if(len_index_1 > 1) begin
                        len_index_1 <= len_index_1 - 1'b1;
                        state_1 <= loop;
                    end else begin
                        len_index_1 <= len_index_1;
                        state_1 <= idel;
                    end                    
                end   
            endcase
        end    
    end
    
    always @ (posedge clk) begin
        data_out_result_2 <= data_mem[data_in_index_2];
        if(~rstn) begin
            state_2 <= idel;
        end else begin
            case(state_2)
                idel: begin   
                    len_index_2 <= 12'd0;
                                     
                    addr_index_2 <= 32'd0;
                    
                    en_result_2 <= 1'b0;
                    addr_result_2 <= 32'd0;
                    
                    if(start_index_2) begin
                        en_index_2 <= 1'b1;
                        state_2 <= len_check;
                    end else begin
                        en_index_2 <= 1'b0;
                        state_2 <= idel;    
                    end                
                end
                
                len_check: begin
                    len_index_2 <= data_in_index_2;
                    addr_index_2 <= addr_index_2 + 1'b1;
                    state_2 <= wd_data;
                end
  
                wd_data: begin
                    en_result_2 <= 1'b1;
                    state_2 <= loop;
                end
                
                loop: begin                    
                    addr_index_2 <= addr_index_2 + 1'b1;
                    addr_result_2 <= addr_result_2 + 1'b1;
                    if(len_index_2 > 1) begin
                        len_index_2 <= len_index_2 - 1'b1;
                        state_2 <= loop;
                    end else begin
                        len_index_2 <= len_index_2;
                        state_2 <= idel;
                    end                    
                end   
            endcase
        end    
    end
    
    always @ (posedge clk) begin
        data_out_result_3 <= data_mem[data_in_index_3];
        if(~rstn) begin
            state_3 <= idel;
        end else begin
            case(state_3)
                idel: begin   
                    len_index_3 <= 12'd0;
                                     
                    addr_index_3 <= 32'd0;
                    
                    en_result_3 <= 1'b0;
                    addr_result_3 <= 32'd0;
                    
                    if(start_index_3) begin
                        en_index_3 <= 1'b1;
                        state_3 <= len_check;
                    end else begin
                        en_index_3 <= 1'b0;
                        state_3 <= idel;    
                    end                
                end
                
                len_check: begin
                    len_index_3 <= data_in_index_3;
                    addr_index_3 <= addr_index_3 + 1'b1;
                    state_3 <= wd_data;
                end
  
                wd_data: begin
                    en_result_3 <= 1'b1;
                    state_3 <= loop;
                end
                
                loop: begin                    
                    addr_index_3 <= addr_index_3 + 1'b1;
                    addr_result_3 <= addr_result_3 + 1'b1;
                    if(len_index_3 > 1) begin
                        len_index_3 <= len_index_3 - 1'b1;
                        state_3 <= loop;
                    end else begin
                        len_index_3 <= len_index_3;
                        state_3 <= idel;
                    end                    
                end   
            endcase
        end    
    end
    
    
endmodule
