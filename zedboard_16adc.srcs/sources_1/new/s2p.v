`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/08 17:46:43
// Design Name: 
// Module Name: s2p
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


module s2p(
    input clk, clk_100M,
    input rstn, rstn_100M,
    input data_in,
    input [3:0] link,
    output reg link_err,
    output reg [10:0] address, 
    output reg [31:0] data_out
    );
    
    reg        addr_flag;
    reg [2:0]  count_sublink;
    reg [3:0]  count_word, count_sysn;
    reg [4:0]  count_ch;
    
    reg [3:0]  state;
    
    reg [11:0] data_mem [31:0][7:0]; 
    reg [13:0] data_buffer;
    
    reg [4:0] index_ch;
    reg [2:0] index_sl;
    
    parameter  init  = 4'b0000,
               sysn  = 4'b0001,
               msb   = 4'b0010,
               data  = 4'b0011,
               lsb   = 4'b0100;
    
    always @ (posedge clk) begin
        if(~rstn) begin
            data_buffer <= 14'd0;
        end else begin
            data_buffer <= {data_buffer[12:0], data_in};
        end
    end
        
    always @ (posedge clk) begin
        if(~rstn) begin
            state <= init;
        end else begin
            case(state)    
                init: begin
                    count_sysn   <= 0;
                    count_word   <= 0;
                    count_ch     <= 0;
                    addr_flag    <= 1'b1;
                    state <= sysn;
                end
            
                sysn: begin                    
                    addr_flag    <= 1'b1;
                    
                    if(data_buffer[0] == 14'd0) begin
                        count_sysn <= count_sysn + 1'b1;
                    end else begin
                        count_sysn <= 0;
                    end
                    
                    if(count_sysn == 14'd14) begin
                        state <= msb;    
                    end else begin
                        state <= sysn;
                    end     
                end
                                    
                msb: begin
                    if(data_buffer[0] == 1'b1) begin
                        state <= data; 
                    end else begin
                        state <= init; 
                    end    
                end
                
                data: begin
                    if(count_word >= 4'd11) begin
                        count_word <= 0;
                        state <= lsb;
                    end else begin
                        count_word <= count_word + 1'b1; 
                        state <= data;   
                    end
                end
                
                lsb: begin
                    if((data_buffer[0] != 1'b0) || ((addr_flag == 1'b1) && (data_buffer[12:9] != 4'd7)) || ((addr_flag == 1'b1) && (data_buffer[5:1] != 4'd0))) begin
                        state <= init;
                    end else begin
                        if(addr_flag == 1'b1) begin
                            addr_flag <= 1'b0;
                            count_sublink <= data_buffer[8:6];
                            state <= msb;
                        end else begin 
                            data_mem[count_ch][count_sublink] <= ~ data_buffer[12:1];
                            if(count_ch >= 31) begin
                                count_ch <= 0;
                                count_sysn <= 0;
                                state <= sysn;
                            end else begin
                                count_ch <= count_ch + 1'b1;
                                state <= msb;
                            end                      
                        end                           
                    end
                    
                    if((addr_flag == 1'b1) && (data_buffer[12:9] != link))
                        link_err <= 1'b1;    
                    else  if((addr_flag == 1'b1) && (data_buffer[12:9] == link))
                        link_err <= 1'b0;
                    else 
                        link_err <= link_err;
                end
            endcase
        end
    end
    
    
    always @ (posedge clk_100M) begin          
        if(~rstn) begin
            data_out <= 0;
            index_ch <= 0;
            index_sl <= 0;
        end else begin 
            if(index_ch == 5'd30)begin
                if(index_sl == 3'd7)begin
                    data_out <= {4'd0,data_mem[index_ch+1][index_sl],4'd0,data_mem[index_ch][index_sl]};
                    address <= {link,index_sl,index_ch[4:1]};
                    index_ch <= 5'd0;
                    index_sl <= 3'd0;
                end else begin
                    data_out <= {4'd0,data_mem[index_ch+1][index_sl],4'd0,data_mem[index_ch][index_sl]};
                    address <= {link,index_sl,index_ch[4:1]};
                    index_ch <= 5'd0;
                    index_sl <= index_sl + 1;
                end
            end else begin
                data_out <= {4'd0,data_mem[index_ch+1][index_sl],4'd0,data_mem[index_ch][index_sl]};
                address <= {link,index_sl,index_ch[4:1]};
                index_ch <= index_ch + 2;
            end
        end
    end
    
    
endmodule
