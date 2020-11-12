`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/14 10:30:03
// Design Name: 
// Module Name: s2p_tb
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


module s2p_tb( );
    
    reg clk, rstn, data_in;
    wire link_err;
    wire [3:0] link, state;
    wire [2:0] sublink;
    wire [4:0] channel, data_out_ch;
    wire [11:0] data_out0, data_out1, data_out2, data_out3, data_out4, data_out5, data_out6, data_out7;
    
    reg [3:0] index_word;
    reg [5:0] index_ch;
    reg [13:0] data_pattern [33:0];
   
    s2p u0(
        .clk(clk),
        .rstn(rstn),
        .data_in(data_in),
        .link_err(link_err),
        .link(link),
        .state(state),
        .sublink(sublink),
        .channel(channel),
        .data_out_ch(data_out_ch),
        .data_out0(data_out0),
        .data_out1(data_out1),
        .data_out2(data_out2),
        .data_out3(data_out3),
        .data_out4(data_out4),
        .data_out5(data_out5),
        .data_out6(data_out6),
        .data_out7(data_out7)
    );
    
    initial begin       
        data_pattern[0] <= 14'd0;
        data_pattern[1] <= {1'b1, 4'd7, 3'd1, 5'd3, 1'b0};
        data_pattern[2] <= {1'b1, 12'd0, 1'b0};
        data_pattern[3] <= {1'b1, 12'd1, 1'b0};
        data_pattern[4] <= {1'b1, 12'd2, 1'b0};
        data_pattern[5] <= {1'b1, 12'd3, 1'b0};
        data_pattern[6] <= {1'b1, 12'd4, 1'b0};
        data_pattern[7] <= {1'b1, 12'd5, 1'b0};
        data_pattern[8] <= {1'b1, 12'd6, 1'b0};
        data_pattern[9] <= {1'b1, 12'd7, 1'b0};
        data_pattern[10] <= {1'b1, 12'd8, 1'b0};
        data_pattern[11] <= {1'b1, 12'd9, 1'b0};
        data_pattern[12] <= {1'b1, 12'd10, 1'b0};
        data_pattern[13] <= {1'b1, 12'd11, 1'b0};
        data_pattern[14] <= {1'b1, 12'd12, 1'b0};
        data_pattern[15] <= {1'b1, 12'd13, 1'b0};
        data_pattern[16] <= {1'b1, 12'd14, 1'b0};
        data_pattern[17] <= {1'b1, 12'd15, 1'b0};
        data_pattern[18] <= {1'b1, 12'd16, 1'b0};
        data_pattern[19] <= {1'b1, 12'd17, 1'b0};
        data_pattern[20] <= {1'b1, 12'd18, 1'b0};
        data_pattern[21] <= {1'b1, 12'd19, 1'b0};
        data_pattern[22] <= {1'b1, 12'd20, 1'b0};
        data_pattern[23] <= {1'b1, 12'd21, 1'b0};
        data_pattern[24] <= {1'b1, 12'd22, 1'b0};
        data_pattern[25] <= {1'b1, 12'd23, 1'b0};
        data_pattern[26] <= {1'b1, 12'd24, 1'b0};
        data_pattern[27] <= {1'b1, 12'd25, 1'b0};
        data_pattern[28] <= {1'b1, 12'd26, 1'b0};
        data_pattern[29] <= {1'b1, 12'd27, 1'b0};
        data_pattern[30] <= {1'b1, 12'd28, 1'b0};
        data_pattern[31] <= {1'b1, 12'd29, 1'b0};
        data_pattern[32] <= {1'b1, 12'd30, 1'b0};
        data_pattern[33] <= {1'b1, 12'd31, 1'b0};
    end
    
    
    initial begin
        clk <= 1'b0;
        rstn <= 1'b0;
        #50 rstn <= 1'b1;     
    end
    
    initial
        forever #5 clk <= ~clk;
    
 
        
    always @ (posedge clk) begin   
        
        if(!rstn) begin
            data_in <= 1'b0;
            index_word <= 4'd13;
            index_ch <= 6'd0;
        end else begin
            data_in <= data_pattern[index_ch][index_word];
            if(index_word > 0) begin
                index_word <= index_word - 1'b1;
            end else begin
                index_word <= 4'd13;
                if(index_ch < 6'd33) begin
                    index_ch <= index_ch + 1'b1;
                end else begin
                    index_ch <= 6'd0;
                end
            end
        end
    end
     
endmodule
