// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 14 16:35:43 2020
// Host        : DESKTOP-U60VC6L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/zedboard_16adc/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_s2p_0_0/design_1_s2p_0_0_sim_netlist.v
// Design      : design_1_s2p_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_s2p_0_0,s2p,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "s2p,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_s2p_0_0
   (clk,
    rstn,
    data_in,
    link,
    sublink,
    channel,
    data_out_ch,
    data_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input data_in;
  output [3:0]link;
  output [2:0]sublink;
  output [4:0]channel;
  output [4:0]data_out_ch;
  output [11:0]data_out;

  wire [4:0]channel;
  wire clk;
  wire data_in;
  wire [11:0]data_out;
  wire [4:0]data_out_ch;
  wire [3:0]link;
  wire rstn;
  wire [2:0]sublink;

  design_1_s2p_0_0_s2p inst
       (.channel(channel),
        .clk(clk),
        .data_in(data_in),
        .data_out(data_out),
        .data_out_ch(data_out_ch),
        .link(link),
        .rstn(rstn),
        .sublink(sublink));
endmodule

(* ORIG_REF_NAME = "s2p" *) 
module design_1_s2p_0_0_s2p
   (data_out_ch,
    link,
    sublink,
    channel,
    data_out,
    rstn,
    clk,
    data_in);
  output [4:0]data_out_ch;
  output [3:0]link;
  output [2:0]sublink;
  output [4:0]channel;
  output [11:0]data_out;
  input rstn;
  input clk;
  input data_in;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state[2]_i_5_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_2_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire [4:0]channel;
  wire clk;
  wire [4:0]count_ch;
  wire \count_ch[0]_i_1_n_0 ;
  wire \count_ch[1]_i_1_n_0 ;
  wire \count_ch[2]_i_1_n_0 ;
  wire \count_ch[3]_i_1_n_0 ;
  wire \count_ch[4]_i_1_n_0 ;
  wire \count_ch[5]_i_1_n_0 ;
  wire \count_ch[5]_i_2_n_0 ;
  wire \count_ch[5]_i_3_n_0 ;
  wire \count_ch_reg_n_0_[5] ;
  wire [3:0]count_word;
  wire \count_word[0]_i_1_n_0 ;
  wire \count_word[1]_i_1_n_0 ;
  wire \count_word[2]_i_1_n_0 ;
  wire \count_word[3]_i_1_n_0 ;
  wire \count_word[3]_i_2_n_0 ;
  wire \data_buffer_reg_n_0_[0] ;
  wire \data_buffer_reg_n_0_[13] ;
  wire data_in;
  wire [11:0]data_mem;
  wire \data_mem[0][11]_i_1_n_0 ;
  wire \data_mem[0][11]_i_2_n_0 ;
  wire \data_mem[10][11]_i_1_n_0 ;
  wire \data_mem[11][11]_i_1_n_0 ;
  wire \data_mem[12][11]_i_1_n_0 ;
  wire \data_mem[13][11]_i_1_n_0 ;
  wire \data_mem[14][11]_i_1_n_0 ;
  wire \data_mem[14][11]_i_2_n_0 ;
  wire \data_mem[15][11]_i_1_n_0 ;
  wire \data_mem[15][11]_i_2_n_0 ;
  wire \data_mem[16][11]_i_1_n_0 ;
  wire \data_mem[17][11]_i_1_n_0 ;
  wire \data_mem[18][11]_i_1_n_0 ;
  wire \data_mem[19][11]_i_1_n_0 ;
  wire \data_mem[1][11]_i_1_n_0 ;
  wire \data_mem[20][11]_i_1_n_0 ;
  wire \data_mem[21][11]_i_1_n_0 ;
  wire \data_mem[22][11]_i_1_n_0 ;
  wire \data_mem[23][11]_i_1_n_0 ;
  wire \data_mem[23][11]_i_2_n_0 ;
  wire \data_mem[24][11]_i_1_n_0 ;
  wire \data_mem[25][11]_i_1_n_0 ;
  wire \data_mem[25][11]_i_2_n_0 ;
  wire \data_mem[25][11]_i_3_n_0 ;
  wire \data_mem[26][11]_i_1_n_0 ;
  wire \data_mem[27][11]_i_1_n_0 ;
  wire \data_mem[28][11]_i_1_n_0 ;
  wire \data_mem[29][11]_i_1_n_0 ;
  wire \data_mem[2][11]_i_1_n_0 ;
  wire \data_mem[30][11]_i_1_n_0 ;
  wire \data_mem[31][11]_i_1_n_0 ;
  wire \data_mem[31][11]_i_2_n_0 ;
  wire \data_mem[32][11]_i_1_n_0 ;
  wire \data_mem[3][11]_i_1_n_0 ;
  wire \data_mem[4][11]_i_1_n_0 ;
  wire \data_mem[4][11]_i_2_n_0 ;
  wire \data_mem[5][11]_i_1_n_0 ;
  wire \data_mem[5][11]_i_2_n_0 ;
  wire \data_mem[6][11]_i_1_n_0 ;
  wire \data_mem[6][11]_i_2_n_0 ;
  wire \data_mem[7][11]_i_1_n_0 ;
  wire \data_mem[7][11]_i_2_n_0 ;
  wire \data_mem[8][11]_i_1_n_0 ;
  wire \data_mem[9][11]_i_1_n_0 ;
  wire [11:0]\data_mem_reg[10] ;
  wire [11:0]\data_mem_reg[11] ;
  wire [11:0]\data_mem_reg[12] ;
  wire [11:0]\data_mem_reg[13] ;
  wire [11:0]\data_mem_reg[14] ;
  wire [11:0]\data_mem_reg[15] ;
  wire [11:0]\data_mem_reg[16] ;
  wire [11:0]\data_mem_reg[17] ;
  wire [11:0]\data_mem_reg[18] ;
  wire [11:0]\data_mem_reg[19] ;
  wire [11:0]\data_mem_reg[1] ;
  wire [11:0]\data_mem_reg[20] ;
  wire [11:0]\data_mem_reg[21] ;
  wire [11:0]\data_mem_reg[22] ;
  wire [11:0]\data_mem_reg[23] ;
  wire [11:0]\data_mem_reg[24] ;
  wire [11:0]\data_mem_reg[25] ;
  wire [11:0]\data_mem_reg[26] ;
  wire [11:0]\data_mem_reg[27] ;
  wire [11:0]\data_mem_reg[28] ;
  wire [11:0]\data_mem_reg[29] ;
  wire [11:0]\data_mem_reg[2] ;
  wire [11:0]\data_mem_reg[30] ;
  wire [11:0]\data_mem_reg[31] ;
  wire [11:0]\data_mem_reg[32] ;
  wire [11:0]\data_mem_reg[3] ;
  wire [11:0]\data_mem_reg[4] ;
  wire [11:0]\data_mem_reg[5] ;
  wire [11:0]\data_mem_reg[6] ;
  wire [11:0]\data_mem_reg[7] ;
  wire [11:0]\data_mem_reg[8] ;
  wire [11:0]\data_mem_reg[9] ;
  wire \data_mem_reg_n_0_[0][0] ;
  wire \data_mem_reg_n_0_[0][1] ;
  wire \data_mem_reg_n_0_[0][2] ;
  wire \data_mem_reg_n_0_[0][3] ;
  wire \data_mem_reg_n_0_[0][4] ;
  wire \data_mem_reg_n_0_[0][5] ;
  wire \data_mem_reg_n_0_[0][6] ;
  wire \data_mem_reg_n_0_[0][7] ;
  wire [11:0]data_out;
  wire \data_out[0]_i_10_n_0 ;
  wire \data_out[0]_i_11_n_0 ;
  wire \data_out[0]_i_12_n_0 ;
  wire \data_out[0]_i_13_n_0 ;
  wire \data_out[0]_i_6_n_0 ;
  wire \data_out[0]_i_7_n_0 ;
  wire \data_out[0]_i_8_n_0 ;
  wire \data_out[0]_i_9_n_0 ;
  wire \data_out[10]_i_10_n_0 ;
  wire \data_out[10]_i_11_n_0 ;
  wire \data_out[10]_i_12_n_0 ;
  wire \data_out[10]_i_13_n_0 ;
  wire \data_out[10]_i_6_n_0 ;
  wire \data_out[10]_i_7_n_0 ;
  wire \data_out[10]_i_8_n_0 ;
  wire \data_out[10]_i_9_n_0 ;
  wire \data_out[11]_i_10_n_0 ;
  wire \data_out[11]_i_11_n_0 ;
  wire \data_out[11]_i_12_n_0 ;
  wire \data_out[11]_i_13_n_0 ;
  wire \data_out[11]_i_6_n_0 ;
  wire \data_out[11]_i_7_n_0 ;
  wire \data_out[11]_i_8_n_0 ;
  wire \data_out[11]_i_9_n_0 ;
  wire \data_out[1]_i_10_n_0 ;
  wire \data_out[1]_i_11_n_0 ;
  wire \data_out[1]_i_12_n_0 ;
  wire \data_out[1]_i_13_n_0 ;
  wire \data_out[1]_i_6_n_0 ;
  wire \data_out[1]_i_7_n_0 ;
  wire \data_out[1]_i_8_n_0 ;
  wire \data_out[1]_i_9_n_0 ;
  wire \data_out[2]_i_10_n_0 ;
  wire \data_out[2]_i_11_n_0 ;
  wire \data_out[2]_i_12_n_0 ;
  wire \data_out[2]_i_13_n_0 ;
  wire \data_out[2]_i_6_n_0 ;
  wire \data_out[2]_i_7_n_0 ;
  wire \data_out[2]_i_8_n_0 ;
  wire \data_out[2]_i_9_n_0 ;
  wire \data_out[3]_i_10_n_0 ;
  wire \data_out[3]_i_11_n_0 ;
  wire \data_out[3]_i_12_n_0 ;
  wire \data_out[3]_i_13_n_0 ;
  wire \data_out[3]_i_6_n_0 ;
  wire \data_out[3]_i_7_n_0 ;
  wire \data_out[3]_i_8_n_0 ;
  wire \data_out[3]_i_9_n_0 ;
  wire \data_out[4]_i_10_n_0 ;
  wire \data_out[4]_i_11_n_0 ;
  wire \data_out[4]_i_12_n_0 ;
  wire \data_out[4]_i_13_n_0 ;
  wire \data_out[4]_i_6_n_0 ;
  wire \data_out[4]_i_7_n_0 ;
  wire \data_out[4]_i_8_n_0 ;
  wire \data_out[4]_i_9_n_0 ;
  wire \data_out[5]_i_10_n_0 ;
  wire \data_out[5]_i_11_n_0 ;
  wire \data_out[5]_i_12_n_0 ;
  wire \data_out[5]_i_13_n_0 ;
  wire \data_out[5]_i_6_n_0 ;
  wire \data_out[5]_i_7_n_0 ;
  wire \data_out[5]_i_8_n_0 ;
  wire \data_out[5]_i_9_n_0 ;
  wire \data_out[6]_i_10_n_0 ;
  wire \data_out[6]_i_11_n_0 ;
  wire \data_out[6]_i_12_n_0 ;
  wire \data_out[6]_i_13_n_0 ;
  wire \data_out[6]_i_6_n_0 ;
  wire \data_out[6]_i_7_n_0 ;
  wire \data_out[6]_i_8_n_0 ;
  wire \data_out[6]_i_9_n_0 ;
  wire \data_out[7]_i_10_n_0 ;
  wire \data_out[7]_i_11_n_0 ;
  wire \data_out[7]_i_12_n_0 ;
  wire \data_out[7]_i_13_n_0 ;
  wire \data_out[7]_i_6_n_0 ;
  wire \data_out[7]_i_7_n_0 ;
  wire \data_out[7]_i_8_n_0 ;
  wire \data_out[7]_i_9_n_0 ;
  wire \data_out[8]_i_10_n_0 ;
  wire \data_out[8]_i_11_n_0 ;
  wire \data_out[8]_i_12_n_0 ;
  wire \data_out[8]_i_13_n_0 ;
  wire \data_out[8]_i_6_n_0 ;
  wire \data_out[8]_i_7_n_0 ;
  wire \data_out[8]_i_8_n_0 ;
  wire \data_out[8]_i_9_n_0 ;
  wire \data_out[9]_i_10_n_0 ;
  wire \data_out[9]_i_11_n_0 ;
  wire \data_out[9]_i_12_n_0 ;
  wire \data_out[9]_i_13_n_0 ;
  wire \data_out[9]_i_6_n_0 ;
  wire \data_out[9]_i_7_n_0 ;
  wire \data_out[9]_i_8_n_0 ;
  wire \data_out[9]_i_9_n_0 ;
  wire [4:0]data_out_ch;
  wire \data_out_ch[2]_i_1_n_0 ;
  wire \data_out_ch[3]_i_1_n_0 ;
  wire \data_out_ch[4]_i_1_n_0 ;
  wire \data_out_reg[0]_i_2_n_0 ;
  wire \data_out_reg[0]_i_3_n_0 ;
  wire \data_out_reg[0]_i_4_n_0 ;
  wire \data_out_reg[0]_i_5_n_0 ;
  wire \data_out_reg[10]_i_2_n_0 ;
  wire \data_out_reg[10]_i_3_n_0 ;
  wire \data_out_reg[10]_i_4_n_0 ;
  wire \data_out_reg[10]_i_5_n_0 ;
  wire \data_out_reg[11]_i_2_n_0 ;
  wire \data_out_reg[11]_i_3_n_0 ;
  wire \data_out_reg[11]_i_4_n_0 ;
  wire \data_out_reg[11]_i_5_n_0 ;
  wire \data_out_reg[1]_i_2_n_0 ;
  wire \data_out_reg[1]_i_3_n_0 ;
  wire \data_out_reg[1]_i_4_n_0 ;
  wire \data_out_reg[1]_i_5_n_0 ;
  wire \data_out_reg[2]_i_2_n_0 ;
  wire \data_out_reg[2]_i_3_n_0 ;
  wire \data_out_reg[2]_i_4_n_0 ;
  wire \data_out_reg[2]_i_5_n_0 ;
  wire \data_out_reg[3]_i_2_n_0 ;
  wire \data_out_reg[3]_i_3_n_0 ;
  wire \data_out_reg[3]_i_4_n_0 ;
  wire \data_out_reg[3]_i_5_n_0 ;
  wire \data_out_reg[4]_i_2_n_0 ;
  wire \data_out_reg[4]_i_3_n_0 ;
  wire \data_out_reg[4]_i_4_n_0 ;
  wire \data_out_reg[4]_i_5_n_0 ;
  wire \data_out_reg[5]_i_2_n_0 ;
  wire \data_out_reg[5]_i_3_n_0 ;
  wire \data_out_reg[5]_i_4_n_0 ;
  wire \data_out_reg[5]_i_5_n_0 ;
  wire \data_out_reg[6]_i_2_n_0 ;
  wire \data_out_reg[6]_i_3_n_0 ;
  wire \data_out_reg[6]_i_4_n_0 ;
  wire \data_out_reg[6]_i_5_n_0 ;
  wire \data_out_reg[7]_i_2_n_0 ;
  wire \data_out_reg[7]_i_3_n_0 ;
  wire \data_out_reg[7]_i_4_n_0 ;
  wire \data_out_reg[7]_i_5_n_0 ;
  wire \data_out_reg[8]_i_2_n_0 ;
  wire \data_out_reg[8]_i_3_n_0 ;
  wire \data_out_reg[8]_i_4_n_0 ;
  wire \data_out_reg[8]_i_5_n_0 ;
  wire \data_out_reg[9]_i_2_n_0 ;
  wire \data_out_reg[9]_i_3_n_0 ;
  wire \data_out_reg[9]_i_4_n_0 ;
  wire \data_out_reg[9]_i_5_n_0 ;
  wire [3:0]link;
  wire [3:0]p_0_in;
  wire [11:0]p_0_in_0;
  wire [4:0]p_0_in__0;
  wire rstn;
  wire [2:0]sublink;

  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hCFC8)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\count_ch_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\data_buffer_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBAAAA)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state[2]_i_3_n_0 ),
        .I3(\FSM_onehot_state[2]_i_4_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h020002000200FFFF)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state[2]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state[2]_i_5_n_0 ),
        .I5(\data_buffer_reg_n_0_[0] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(p_0_in_0[11]),
        .I1(p_0_in_0[10]),
        .I2(\data_buffer_reg_n_0_[0] ),
        .I3(p_0_in_0[4]),
        .I4(p_0_in_0[0]),
        .I5(p_0_in_0[1]),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(p_0_in_0[9]),
        .I1(p_0_in_0[8]),
        .I2(p_0_in_0[6]),
        .I3(p_0_in_0[3]),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(p_0_in_0[7]),
        .I1(p_0_in_0[5]),
        .I2(\data_buffer_reg_n_0_[13] ),
        .I3(p_0_in_0[2]),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_state[2]_i_5 
       (.I0(\count_ch_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[2]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state[3]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\data_buffer_reg_n_0_[0] ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h002AAAAA)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(count_word[1]),
        .I2(count_word[0]),
        .I3(count_word[2]),
        .I4(count_word[3]),
        .O(\FSM_onehot_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h88888000)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(count_word[3]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(count_word[1]),
        .I3(count_word[0]),
        .I4(count_word[2]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "sysn:00010,data:01000,lsb:10000,msb:00100,init:00001" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\data_out_ch[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sysn:00010,data:01000,lsb:10000,msb:00100,init:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\data_out_ch[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sysn:00010,data:01000,lsb:10000,msb:00100,init:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\data_out_ch[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sysn:00010,data:01000,lsb:10000,msb:00100,init:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\data_out_ch[4]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "sysn:00010,data:01000,lsb:10000,msb:00100,init:00001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk),
        .CE(\FSM_onehot_state[4]_i_1_n_0 ),
        .D(\FSM_onehot_state[4]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(\data_out_ch[4]_i_1_n_0 ));
  FDRE \channel_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][0] ),
        .Q(channel[0]),
        .R(1'b0));
  FDRE \channel_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][1] ),
        .Q(channel[1]),
        .R(1'b0));
  FDRE \channel_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][2] ),
        .Q(channel[2]),
        .R(1'b0));
  FDRE \channel_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][3] ),
        .Q(channel[3]),
        .R(1'b0));
  FDRE \channel_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][4] ),
        .Q(channel[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \count_ch[0]_i_1 
       (.I0(\count_ch_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(count_ch[0]),
        .O(\count_ch[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \count_ch[1]_i_1 
       (.I0(\count_ch_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(count_ch[1]),
        .I3(count_ch[0]),
        .O(\count_ch[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h006A0000)) 
    \count_ch[2]_i_1 
       (.I0(count_ch[2]),
        .I1(count_ch[0]),
        .I2(count_ch[1]),
        .I3(\count_ch_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\count_ch[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \count_ch[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(count_ch[3]),
        .I2(count_ch[1]),
        .I3(count_ch[0]),
        .I4(count_ch[2]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\count_ch[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028888888)) 
    \count_ch[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(count_ch[4]),
        .I2(count_ch[2]),
        .I3(\count_ch[5]_i_3_n_0 ),
        .I4(count_ch[3]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\count_ch[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA08)) 
    \count_ch[5]_i_1 
       (.I0(rstn),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(\data_buffer_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\count_ch[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \count_ch[5]_i_2 
       (.I0(count_ch[3]),
        .I1(\count_ch[5]_i_3_n_0 ),
        .I2(count_ch[2]),
        .I3(count_ch[4]),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\count_ch[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count_ch[5]_i_3 
       (.I0(count_ch[1]),
        .I1(count_ch[0]),
        .O(\count_ch[5]_i_3_n_0 ));
  FDRE \count_ch_reg[0] 
       (.C(clk),
        .CE(\count_ch[5]_i_1_n_0 ),
        .D(\count_ch[0]_i_1_n_0 ),
        .Q(count_ch[0]),
        .R(1'b0));
  FDRE \count_ch_reg[1] 
       (.C(clk),
        .CE(\count_ch[5]_i_1_n_0 ),
        .D(\count_ch[1]_i_1_n_0 ),
        .Q(count_ch[1]),
        .R(1'b0));
  FDRE \count_ch_reg[2] 
       (.C(clk),
        .CE(\count_ch[5]_i_1_n_0 ),
        .D(\count_ch[2]_i_1_n_0 ),
        .Q(count_ch[2]),
        .R(1'b0));
  FDRE \count_ch_reg[3] 
       (.C(clk),
        .CE(\count_ch[5]_i_1_n_0 ),
        .D(\count_ch[3]_i_1_n_0 ),
        .Q(count_ch[3]),
        .R(1'b0));
  FDRE \count_ch_reg[4] 
       (.C(clk),
        .CE(\count_ch[5]_i_1_n_0 ),
        .D(\count_ch[4]_i_1_n_0 ),
        .Q(count_ch[4]),
        .R(1'b0));
  FDRE \count_ch_reg[5] 
       (.C(clk),
        .CE(\count_ch[5]_i_1_n_0 ),
        .D(\count_ch[5]_i_2_n_0 ),
        .Q(\count_ch_reg_n_0_[5] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0070)) 
    \count_word[0]_i_1 
       (.I0(count_word[3]),
        .I1(count_word[2]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(count_word[0]),
        .O(\count_word[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00707000)) 
    \count_word[1]_i_1 
       (.I0(count_word[3]),
        .I1(count_word[2]),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(count_word[1]),
        .I4(count_word[0]),
        .O(\count_word[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h04444000)) 
    \count_word[2]_i_1 
       (.I0(count_word[3]),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(count_word[1]),
        .I3(count_word[0]),
        .I4(count_word[2]),
        .O(\count_word[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \count_word[3]_i_1 
       (.I0(rstn),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\count_word[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h20000888)) 
    \count_word[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(count_word[3]),
        .I2(count_word[1]),
        .I3(count_word[0]),
        .I4(count_word[2]),
        .O(\count_word[3]_i_2_n_0 ));
  FDRE \count_word_reg[0] 
       (.C(clk),
        .CE(\count_word[3]_i_1_n_0 ),
        .D(\count_word[0]_i_1_n_0 ),
        .Q(count_word[0]),
        .R(1'b0));
  FDRE \count_word_reg[1] 
       (.C(clk),
        .CE(\count_word[3]_i_1_n_0 ),
        .D(\count_word[1]_i_1_n_0 ),
        .Q(count_word[1]),
        .R(1'b0));
  FDRE \count_word_reg[2] 
       (.C(clk),
        .CE(\count_word[3]_i_1_n_0 ),
        .D(\count_word[2]_i_1_n_0 ),
        .Q(count_word[2]),
        .R(1'b0));
  FDRE \count_word_reg[3] 
       (.C(clk),
        .CE(\count_word[3]_i_1_n_0 ),
        .D(\count_word[3]_i_2_n_0 ),
        .Q(count_word[3]),
        .R(1'b0));
  FDSE \data_buffer_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_in),
        .Q(\data_buffer_reg_n_0_[0] ),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[8]),
        .Q(p_0_in_0[9]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[9]),
        .Q(p_0_in_0[10]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[10]),
        .Q(p_0_in_0[11]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[11]),
        .Q(\data_buffer_reg_n_0_[13] ),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_buffer_reg_n_0_[0] ),
        .Q(p_0_in_0[0]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[0]),
        .Q(p_0_in_0[1]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[1]),
        .Q(p_0_in_0[2]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[2]),
        .Q(p_0_in_0[3]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[3]),
        .Q(p_0_in_0[4]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[4]),
        .Q(p_0_in_0[5]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[5]),
        .Q(p_0_in_0[6]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[6]),
        .Q(p_0_in_0[7]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  FDSE \data_buffer_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0[7]),
        .Q(p_0_in_0[8]),
        .S(\data_out_ch[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \data_mem[0][11]_i_1 
       (.I0(count_ch[3]),
        .I1(count_ch[2]),
        .I2(\count_ch_reg_n_0_[5] ),
        .I3(\data_mem[0][11]_i_2_n_0 ),
        .I4(count_ch[0]),
        .I5(count_ch[1]),
        .O(\data_mem[0][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \data_mem[0][11]_i_2 
       (.I0(\data_buffer_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(rstn),
        .I3(count_ch[4]),
        .O(\data_mem[0][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \data_mem[10][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[3]),
        .I2(count_ch[1]),
        .I3(\data_mem[0][11]_i_2_n_0 ),
        .I4(\count_ch_reg_n_0_[5] ),
        .I5(count_ch[2]),
        .O(\data_mem[10][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_mem[11][11]_i_1 
       (.I0(count_ch[3]),
        .I1(count_ch[1]),
        .I2(count_ch[0]),
        .I3(\data_mem[0][11]_i_2_n_0 ),
        .I4(\count_ch_reg_n_0_[5] ),
        .I5(count_ch[2]),
        .O(\data_mem[11][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \data_mem[12][11]_i_1 
       (.I0(count_ch[1]),
        .I1(\count_ch_reg_n_0_[5] ),
        .I2(\data_mem[0][11]_i_2_n_0 ),
        .I3(count_ch[2]),
        .I4(count_ch[0]),
        .I5(count_ch[3]),
        .O(\data_mem[12][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \data_mem[13][11]_i_1 
       (.I0(count_ch[1]),
        .I1(\count_ch_reg_n_0_[5] ),
        .I2(\data_mem[0][11]_i_2_n_0 ),
        .I3(count_ch[2]),
        .I4(count_ch[0]),
        .I5(count_ch[3]),
        .O(\data_mem[13][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00002000)) 
    \data_mem[14][11]_i_1 
       (.I0(count_ch[1]),
        .I1(count_ch[0]),
        .I2(count_ch[3]),
        .I3(count_ch[2]),
        .I4(\data_mem[14][11]_i_2_n_0 ),
        .O(\data_mem[14][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \data_mem[14][11]_i_2 
       (.I0(rstn),
        .I1(count_ch[4]),
        .I2(\count_ch_reg_n_0_[5] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\data_buffer_reg_n_0_[0] ),
        .O(\data_mem[14][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \data_mem[15][11]_i_1 
       (.I0(\data_mem[15][11]_i_2_n_0 ),
        .I1(\data_buffer_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\count_ch_reg_n_0_[5] ),
        .I4(count_ch[4]),
        .I5(rstn),
        .O(\data_mem[15][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \data_mem[15][11]_i_2 
       (.I0(count_ch[3]),
        .I1(count_ch[1]),
        .I2(count_ch[0]),
        .I3(count_ch[2]),
        .O(\data_mem[15][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \data_mem[16][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[1]),
        .I2(\data_mem[31][11]_i_2_n_0 ),
        .I3(count_ch[3]),
        .I4(count_ch[2]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[16][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \data_mem[17][11]_i_1 
       (.I0(count_ch[1]),
        .I1(count_ch[0]),
        .I2(\data_mem[31][11]_i_2_n_0 ),
        .I3(count_ch[3]),
        .I4(count_ch[2]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[17][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \data_mem[18][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[1]),
        .I2(\data_mem[31][11]_i_2_n_0 ),
        .I3(count_ch[3]),
        .I4(count_ch[2]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[18][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \data_mem[19][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[1]),
        .I2(\data_mem[31][11]_i_2_n_0 ),
        .I3(count_ch[3]),
        .I4(count_ch[2]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[19][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \data_mem[1][11]_i_1 
       (.I0(count_ch[3]),
        .I1(count_ch[2]),
        .I2(\count_ch_reg_n_0_[5] ),
        .I3(\data_mem[0][11]_i_2_n_0 ),
        .I4(count_ch[1]),
        .I5(count_ch[0]),
        .O(\data_mem[1][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \data_mem[20][11]_i_1 
       (.I0(\data_mem[31][11]_i_2_n_0 ),
        .I1(count_ch[0]),
        .I2(count_ch[2]),
        .I3(count_ch[1]),
        .I4(count_ch[3]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[20][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \data_mem[21][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[2]),
        .I2(\data_mem[31][11]_i_2_n_0 ),
        .I3(\count_ch_reg_n_0_[5] ),
        .I4(count_ch[3]),
        .I5(count_ch[1]),
        .O(\data_mem[21][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \data_mem[22][11]_i_1 
       (.I0(\data_mem[23][11]_i_2_n_0 ),
        .I1(count_ch[0]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\count_ch_reg_n_0_[5] ),
        .I4(\data_buffer_reg_n_0_[0] ),
        .O(\data_mem[22][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000800)) 
    \data_mem[23][11]_i_1 
       (.I0(\data_mem[23][11]_i_2_n_0 ),
        .I1(count_ch[0]),
        .I2(\data_buffer_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[23][11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00008000)) 
    \data_mem[23][11]_i_2 
       (.I0(count_ch[4]),
        .I1(rstn),
        .I2(count_ch[1]),
        .I3(count_ch[2]),
        .I4(count_ch[3]),
        .O(\data_mem[23][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \data_mem[24][11]_i_1 
       (.I0(\data_mem[25][11]_i_3_n_0 ),
        .I1(rstn),
        .I2(count_ch[4]),
        .I3(\data_mem[25][11]_i_2_n_0 ),
        .I4(count_ch[0]),
        .I5(count_ch[3]),
        .O(\data_mem[24][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \data_mem[25][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[3]),
        .I2(\data_mem[25][11]_i_2_n_0 ),
        .I3(\data_mem[25][11]_i_3_n_0 ),
        .I4(rstn),
        .I5(count_ch[4]),
        .O(\data_mem[25][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_mem[25][11]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\data_buffer_reg_n_0_[0] ),
        .O(\data_mem[25][11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data_mem[25][11]_i_3 
       (.I0(count_ch[1]),
        .I1(count_ch[2]),
        .I2(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[25][11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \data_mem[26][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[3]),
        .I2(count_ch[1]),
        .I3(\data_mem[31][11]_i_2_n_0 ),
        .I4(\count_ch_reg_n_0_[5] ),
        .I5(count_ch[2]),
        .O(\data_mem[26][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \data_mem[27][11]_i_1 
       (.I0(count_ch[3]),
        .I1(count_ch[1]),
        .I2(count_ch[0]),
        .I3(\data_mem[31][11]_i_2_n_0 ),
        .I4(\count_ch_reg_n_0_[5] ),
        .I5(count_ch[2]),
        .O(\data_mem[27][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \data_mem[28][11]_i_1 
       (.I0(\data_mem[31][11]_i_2_n_0 ),
        .I1(\count_ch_reg_n_0_[5] ),
        .I2(count_ch[3]),
        .I3(count_ch[2]),
        .I4(count_ch[1]),
        .I5(count_ch[0]),
        .O(\data_mem[28][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \data_mem[29][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[2]),
        .I2(\data_mem[31][11]_i_2_n_0 ),
        .I3(count_ch[3]),
        .I4(count_ch[1]),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[29][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \data_mem[2][11]_i_1 
       (.I0(count_ch[3]),
        .I1(count_ch[2]),
        .I2(\count_ch_reg_n_0_[5] ),
        .I3(\data_mem[0][11]_i_2_n_0 ),
        .I4(count_ch[0]),
        .I5(count_ch[1]),
        .O(\data_mem[2][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \data_mem[30][11]_i_1 
       (.I0(\data_mem[31][11]_i_2_n_0 ),
        .I1(\count_ch_reg_n_0_[5] ),
        .I2(count_ch[1]),
        .I3(count_ch[0]),
        .I4(count_ch[3]),
        .I5(count_ch[2]),
        .O(\data_mem[30][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_mem[31][11]_i_1 
       (.I0(count_ch[2]),
        .I1(count_ch[0]),
        .I2(count_ch[1]),
        .I3(count_ch[3]),
        .I4(\data_mem[31][11]_i_2_n_0 ),
        .I5(\count_ch_reg_n_0_[5] ),
        .O(\data_mem[31][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hF7FF)) 
    \data_mem[31][11]_i_2 
       (.I0(count_ch[4]),
        .I1(rstn),
        .I2(\data_buffer_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\data_mem[31][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \data_mem[32][11]_i_1 
       (.I0(\data_mem[0][11]_i_2_n_0 ),
        .I1(count_ch[1]),
        .I2(count_ch[0]),
        .I3(count_ch[2]),
        .I4(\count_ch_reg_n_0_[5] ),
        .I5(count_ch[3]),
        .O(\data_mem[32][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \data_mem[3][11]_i_1 
       (.I0(count_ch[3]),
        .I1(count_ch[2]),
        .I2(\count_ch_reg_n_0_[5] ),
        .I3(\data_mem[0][11]_i_2_n_0 ),
        .I4(count_ch[0]),
        .I5(count_ch[1]),
        .O(\data_mem[3][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_mem[4][11]_i_1 
       (.I0(\data_mem[4][11]_i_2_n_0 ),
        .I1(\data_mem[25][11]_i_2_n_0 ),
        .I2(count_ch[2]),
        .I3(rstn),
        .I4(count_ch[4]),
        .I5(\data_mem[7][11]_i_2_n_0 ),
        .O(\data_mem[4][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \data_mem[4][11]_i_2 
       (.I0(count_ch[1]),
        .I1(count_ch[0]),
        .O(\data_mem[4][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_mem[5][11]_i_1 
       (.I0(\data_mem[5][11]_i_2_n_0 ),
        .I1(\data_mem[25][11]_i_2_n_0 ),
        .I2(count_ch[2]),
        .I3(rstn),
        .I4(count_ch[4]),
        .I5(\data_mem[7][11]_i_2_n_0 ),
        .O(\data_mem[5][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_mem[5][11]_i_2 
       (.I0(count_ch[0]),
        .I1(count_ch[1]),
        .O(\data_mem[5][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_mem[6][11]_i_1 
       (.I0(\data_mem[6][11]_i_2_n_0 ),
        .I1(\data_mem[25][11]_i_2_n_0 ),
        .I2(count_ch[2]),
        .I3(rstn),
        .I4(count_ch[4]),
        .I5(\data_mem[7][11]_i_2_n_0 ),
        .O(\data_mem[6][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \data_mem[6][11]_i_2 
       (.I0(count_ch[1]),
        .I1(count_ch[0]),
        .O(\data_mem[6][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \data_mem[7][11]_i_1 
       (.I0(\count_ch[5]_i_3_n_0 ),
        .I1(\data_mem[25][11]_i_2_n_0 ),
        .I2(count_ch[2]),
        .I3(rstn),
        .I4(count_ch[4]),
        .I5(\data_mem[7][11]_i_2_n_0 ),
        .O(\data_mem[7][11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_mem[7][11]_i_2 
       (.I0(\count_ch_reg_n_0_[5] ),
        .I1(count_ch[3]),
        .O(\data_mem[7][11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \data_mem[8][11]_i_1 
       (.I0(\data_mem[0][11]_i_2_n_0 ),
        .I1(count_ch[1]),
        .I2(count_ch[2]),
        .I3(\count_ch_reg_n_0_[5] ),
        .I4(count_ch[0]),
        .I5(count_ch[3]),
        .O(\data_mem[8][11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \data_mem[9][11]_i_1 
       (.I0(count_ch[0]),
        .I1(count_ch[3]),
        .I2(\data_mem[25][11]_i_2_n_0 ),
        .I3(\data_mem[25][11]_i_3_n_0 ),
        .I4(count_ch[4]),
        .I5(rstn),
        .O(\data_mem[9][11]_i_1_n_0 ));
  FDRE \data_mem_reg[0][0] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][10] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \data_mem_reg[0][11] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \data_mem_reg[0][1] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][2] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][3] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][4] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][5] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][6] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][7] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg_n_0_[0][7] ),
        .R(1'b0));
  FDRE \data_mem_reg[0][8] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \data_mem_reg[0][9] 
       (.C(clk),
        .CE(\data_mem[0][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \data_mem_reg[10][0] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[10] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[10][10] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[10] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[10][11] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[10] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[10][1] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[10] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[10][2] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[10] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[10][3] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[10] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[10][4] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[10] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[10][5] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[10] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[10][6] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[10] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[10][7] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[10] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[10][8] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[10] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[10][9] 
       (.C(clk),
        .CE(\data_mem[10][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[10] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[11][0] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[11] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[11][10] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[11] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[11][11] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[11] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[11][1] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[11] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[11][2] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[11] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[11][3] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[11] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[11][4] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[11] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[11][5] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[11] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[11][6] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[11] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[11][7] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[11] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[11][8] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[11] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[11][9] 
       (.C(clk),
        .CE(\data_mem[11][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[11] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[12][0] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[12] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[12][10] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[12] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[12][11] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[12] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[12][1] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[12] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[12][2] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[12] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[12][3] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[12] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[12][4] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[12] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[12][5] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[12] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[12][6] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[12] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[12][7] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[12] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[12][8] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[12] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[12][9] 
       (.C(clk),
        .CE(\data_mem[12][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[12] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[13][0] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[13] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[13][10] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[13] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[13][11] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[13] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[13][1] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[13] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[13][2] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[13] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[13][3] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[13] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[13][4] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[13] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[13][5] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[13] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[13][6] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[13] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[13][7] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[13] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[13][8] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[13] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[13][9] 
       (.C(clk),
        .CE(\data_mem[13][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[13] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[14][0] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[14] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[14][10] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[14] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[14][11] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[14] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[14][1] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[14] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[14][2] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[14] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[14][3] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[14] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[14][4] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[14] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[14][5] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[14] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[14][6] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[14] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[14][7] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[14] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[14][8] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[14] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[14][9] 
       (.C(clk),
        .CE(\data_mem[14][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[14] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[15][0] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[15] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[15][10] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[15] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[15][11] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[15] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[15][1] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[15] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[15][2] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[15] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[15][3] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[15] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[15][4] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[15] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[15][5] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[15] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[15][6] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[15] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[15][7] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[15] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[15][8] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[15] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[15][9] 
       (.C(clk),
        .CE(\data_mem[15][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[15] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[16][0] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[16] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[16][10] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[16] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[16][11] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[16] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[16][1] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[16] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[16][2] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[16] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[16][3] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[16] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[16][4] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[16] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[16][5] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[16] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[16][6] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[16] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[16][7] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[16] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[16][8] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[16] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[16][9] 
       (.C(clk),
        .CE(\data_mem[16][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[16] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[17][0] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[17] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[17][10] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[17] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[17][11] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[17] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[17][1] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[17] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[17][2] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[17] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[17][3] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[17] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[17][4] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[17] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[17][5] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[17] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[17][6] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[17] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[17][7] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[17] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[17][8] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[17] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[17][9] 
       (.C(clk),
        .CE(\data_mem[17][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[17] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[18][0] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[18] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[18][10] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[18] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[18][11] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[18] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[18][1] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[18] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[18][2] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[18] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[18][3] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[18] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[18][4] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[18] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[18][5] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[18] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[18][6] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[18] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[18][7] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[18] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[18][8] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[18] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[18][9] 
       (.C(clk),
        .CE(\data_mem[18][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[18] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[19][0] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[19] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[19][10] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[19] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[19][11] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[19] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[19][1] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[19] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[19][2] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[19] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[19][3] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[19] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[19][4] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[19] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[19][5] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[19] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[19][6] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[19] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[19][7] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[19] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[19][8] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[19] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[19][9] 
       (.C(clk),
        .CE(\data_mem[19][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[19] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[1][0] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[1] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[1][10] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[1] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[1][11] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[1] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[1][1] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[1] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[1][2] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[1] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[1][3] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[1] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[1][4] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[1] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[1][5] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[1] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[1][6] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[1] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[1][7] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[1] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[1][8] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[1] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[1][9] 
       (.C(clk),
        .CE(\data_mem[1][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[1] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[20][0] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[20] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[20][10] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[20] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[20][11] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[20] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[20][1] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[20] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[20][2] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[20] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[20][3] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[20] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[20][4] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[20] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[20][5] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[20] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[20][6] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[20] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[20][7] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[20] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[20][8] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[20] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[20][9] 
       (.C(clk),
        .CE(\data_mem[20][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[20] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[21][0] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[21] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[21][10] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[21] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[21][11] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[21] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[21][1] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[21] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[21][2] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[21] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[21][3] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[21] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[21][4] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[21] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[21][5] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[21] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[21][6] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[21] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[21][7] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[21] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[21][8] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[21] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[21][9] 
       (.C(clk),
        .CE(\data_mem[21][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[21] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[22][0] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[22] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[22][10] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[22] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[22][11] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[22] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[22][1] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[22] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[22][2] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[22] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[22][3] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[22] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[22][4] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[22] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[22][5] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[22] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[22][6] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[22] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[22][7] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[22] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[22][8] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[22] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[22][9] 
       (.C(clk),
        .CE(\data_mem[22][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[22] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[23][0] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[23] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[23][10] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[23] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[23][11] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[23] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[23][1] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[23] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[23][2] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[23] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[23][3] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[23] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[23][4] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[23] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[23][5] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[23] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[23][6] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[23] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[23][7] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[23] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[23][8] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[23] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[23][9] 
       (.C(clk),
        .CE(\data_mem[23][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[23] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[24][0] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[24] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[24][10] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[24] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[24][11] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[24] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[24][1] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[24] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[24][2] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[24] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[24][3] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[24] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[24][4] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[24] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[24][5] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[24] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[24][6] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[24] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[24][7] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[24] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[24][8] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[24] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[24][9] 
       (.C(clk),
        .CE(\data_mem[24][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[24] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[25][0] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[25] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[25][10] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[25] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[25][11] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[25] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[25][1] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[25] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[25][2] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[25] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[25][3] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[25] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[25][4] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[25] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[25][5] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[25] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[25][6] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[25] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[25][7] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[25] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[25][8] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[25] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[25][9] 
       (.C(clk),
        .CE(\data_mem[25][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[25] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[26][0] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[26] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[26][10] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[26] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[26][11] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[26] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[26][1] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[26] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[26][2] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[26] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[26][3] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[26] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[26][4] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[26] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[26][5] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[26] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[26][6] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[26] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[26][7] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[26] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[26][8] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[26] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[26][9] 
       (.C(clk),
        .CE(\data_mem[26][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[26] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[27][0] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[27] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[27][10] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[27] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[27][11] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[27] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[27][1] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[27] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[27][2] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[27] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[27][3] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[27] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[27][4] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[27] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[27][5] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[27] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[27][6] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[27] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[27][7] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[27] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[27][8] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[27] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[27][9] 
       (.C(clk),
        .CE(\data_mem[27][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[27] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[28][0] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[28] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[28][10] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[28] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[28][11] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[28] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[28][1] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[28] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[28][2] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[28] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[28][3] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[28] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[28][4] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[28] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[28][5] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[28] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[28][6] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[28] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[28][7] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[28] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[28][8] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[28] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[28][9] 
       (.C(clk),
        .CE(\data_mem[28][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[28] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[29][0] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[29] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[29][10] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[29] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[29][11] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[29] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[29][1] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[29] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[29][2] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[29] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[29][3] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[29] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[29][4] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[29] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[29][5] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[29] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[29][6] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[29] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[29][7] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[29] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[29][8] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[29] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[29][9] 
       (.C(clk),
        .CE(\data_mem[29][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[29] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[2][0] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[2] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[2][10] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[2] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[2][11] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[2] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[2][1] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[2] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[2][2] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[2] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[2][3] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[2] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[2][4] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[2] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[2][5] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[2] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[2][6] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[2] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[2][7] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[2] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[2][8] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[2] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[2][9] 
       (.C(clk),
        .CE(\data_mem[2][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[2] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[30][0] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[30] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[30][10] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[30] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[30][11] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[30] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[30][1] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[30] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[30][2] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[30] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[30][3] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[30] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[30][4] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[30] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[30][5] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[30] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[30][6] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[30] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[30][7] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[30] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[30][8] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[30] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[30][9] 
       (.C(clk),
        .CE(\data_mem[30][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[30] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[31][0] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[31] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[31][10] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[31] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[31][11] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[31] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[31][1] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[31] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[31][2] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[31] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[31][3] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[31] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[31][4] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[31] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[31][5] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[31] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[31][6] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[31] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[31][7] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[31] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[31][8] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[31] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[31][9] 
       (.C(clk),
        .CE(\data_mem[31][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[31] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[32][0] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[32] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[32][10] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[32] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[32][11] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[32] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[32][1] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[32] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[32][2] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[32] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[32][3] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[32] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[32][4] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[32] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[32][5] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[32] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[32][6] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[32] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[32][7] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[32] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[32][8] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[32] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[32][9] 
       (.C(clk),
        .CE(\data_mem[32][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[32] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[3][0] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[3] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[3][10] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[3] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[3][11] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[3] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[3][1] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[3] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[3][2] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[3] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[3][3] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[3] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[3][4] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[3] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[3][5] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[3] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[3][6] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[3] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[3][7] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[3] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[3][8] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[3] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[3][9] 
       (.C(clk),
        .CE(\data_mem[3][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[3] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[4][0] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[4] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[4][10] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[4] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[4][11] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[4] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[4][1] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[4] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[4][2] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[4] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[4][3] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[4] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[4][4] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[4] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[4][5] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[4] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[4][6] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[4] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[4][7] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[4] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[4][8] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[4] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[4][9] 
       (.C(clk),
        .CE(\data_mem[4][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[4] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[5][0] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[5] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[5][10] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[5] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[5][11] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[5] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[5][1] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[5] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[5][2] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[5] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[5][3] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[5] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[5][4] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[5] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[5][5] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[5] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[5][6] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[5] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[5][7] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[5] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[5][8] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[5] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[5][9] 
       (.C(clk),
        .CE(\data_mem[5][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[5] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[6][0] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[6] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[6][10] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[6] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[6][11] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[6] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[6][1] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[6] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[6][2] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[6] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[6][3] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[6] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[6][4] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[6] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[6][5] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[6] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[6][6] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[6] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[6][7] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[6] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[6][8] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[6] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[6][9] 
       (.C(clk),
        .CE(\data_mem[6][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[6] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[7][0] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[7] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[7][10] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[7] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[7][11] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[7] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[7][1] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[7] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[7][2] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[7] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[7][3] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[7] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[7][4] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[7] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[7][5] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[7] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[7][6] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[7] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[7][7] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[7] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[7][8] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[7] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[7][9] 
       (.C(clk),
        .CE(\data_mem[7][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[7] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[8][0] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[8] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[8][10] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[8] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[8][11] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[8] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[8][1] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[8] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[8][2] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[8] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[8][3] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[8] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[8][4] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[8] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[8][5] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[8] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[8][6] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[8] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[8][7] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[8] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[8][8] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[8] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[8][9] 
       (.C(clk),
        .CE(\data_mem[8][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[8] [9]),
        .R(1'b0));
  FDRE \data_mem_reg[9][0] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\data_mem_reg[9] [0]),
        .R(1'b0));
  FDRE \data_mem_reg[9][10] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[10]),
        .Q(\data_mem_reg[9] [10]),
        .R(1'b0));
  FDRE \data_mem_reg[9][11] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[11]),
        .Q(\data_mem_reg[9] [11]),
        .R(1'b0));
  FDRE \data_mem_reg[9][1] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\data_mem_reg[9] [1]),
        .R(1'b0));
  FDRE \data_mem_reg[9][2] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[2]),
        .Q(\data_mem_reg[9] [2]),
        .R(1'b0));
  FDRE \data_mem_reg[9][3] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[3]),
        .Q(\data_mem_reg[9] [3]),
        .R(1'b0));
  FDRE \data_mem_reg[9][4] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[4]),
        .Q(\data_mem_reg[9] [4]),
        .R(1'b0));
  FDRE \data_mem_reg[9][5] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[5]),
        .Q(\data_mem_reg[9] [5]),
        .R(1'b0));
  FDRE \data_mem_reg[9][6] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[6]),
        .Q(\data_mem_reg[9] [6]),
        .R(1'b0));
  FDRE \data_mem_reg[9][7] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[7]),
        .Q(\data_mem_reg[9] [7]),
        .R(1'b0));
  FDRE \data_mem_reg[9][8] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[8]),
        .Q(\data_mem_reg[9] [8]),
        .R(1'b0));
  FDRE \data_mem_reg[9][9] 
       (.C(clk),
        .CE(\data_mem[9][11]_i_1_n_0 ),
        .D(p_0_in_0[9]),
        .Q(\data_mem_reg[9] [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_1 
       (.I0(\data_out_reg[0]_i_2_n_0 ),
        .I1(\data_out_reg[0]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[0]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[0]_i_5_n_0 ),
        .O(data_mem[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_10 
       (.I0(\data_mem_reg[12] [0]),
        .I1(\data_mem_reg[11] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [0]),
        .O(\data_out[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_11 
       (.I0(\data_mem_reg[16] [0]),
        .I1(\data_mem_reg[15] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [0]),
        .O(\data_out[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_12 
       (.I0(\data_mem_reg[4] [0]),
        .I1(\data_mem_reg[3] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [0]),
        .O(\data_out[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_13 
       (.I0(\data_mem_reg[8] [0]),
        .I1(\data_mem_reg[7] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [0]),
        .O(\data_out[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_6 
       (.I0(\data_mem_reg[28] [0]),
        .I1(\data_mem_reg[27] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [0]),
        .O(\data_out[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_7 
       (.I0(\data_mem_reg[32] [0]),
        .I1(\data_mem_reg[31] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [0]),
        .O(\data_out[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_8 
       (.I0(\data_mem_reg[20] [0]),
        .I1(\data_mem_reg[19] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [0]),
        .O(\data_out[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[0]_i_9 
       (.I0(\data_mem_reg[24] [0]),
        .I1(\data_mem_reg[23] [0]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [0]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [0]),
        .O(\data_out[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_1 
       (.I0(\data_out_reg[10]_i_2_n_0 ),
        .I1(\data_out_reg[10]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[10]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[10]_i_5_n_0 ),
        .O(data_mem[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_10 
       (.I0(\data_mem_reg[12] [10]),
        .I1(\data_mem_reg[11] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [10]),
        .O(\data_out[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_11 
       (.I0(\data_mem_reg[16] [10]),
        .I1(\data_mem_reg[15] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [10]),
        .O(\data_out[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_12 
       (.I0(\data_mem_reg[4] [10]),
        .I1(\data_mem_reg[3] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [10]),
        .O(\data_out[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_13 
       (.I0(\data_mem_reg[8] [10]),
        .I1(\data_mem_reg[7] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [10]),
        .O(\data_out[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_6 
       (.I0(\data_mem_reg[28] [10]),
        .I1(\data_mem_reg[27] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [10]),
        .O(\data_out[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_7 
       (.I0(\data_mem_reg[32] [10]),
        .I1(\data_mem_reg[31] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [10]),
        .O(\data_out[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_8 
       (.I0(\data_mem_reg[20] [10]),
        .I1(\data_mem_reg[19] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [10]),
        .O(\data_out[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[10]_i_9 
       (.I0(\data_mem_reg[24] [10]),
        .I1(\data_mem_reg[23] [10]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [10]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [10]),
        .O(\data_out[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_1 
       (.I0(\data_out_reg[11]_i_2_n_0 ),
        .I1(\data_out_reg[11]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[11]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[11]_i_5_n_0 ),
        .O(data_mem[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_10 
       (.I0(\data_mem_reg[12] [11]),
        .I1(\data_mem_reg[11] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [11]),
        .O(\data_out[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_11 
       (.I0(\data_mem_reg[16] [11]),
        .I1(\data_mem_reg[15] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [11]),
        .O(\data_out[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_12 
       (.I0(\data_mem_reg[4] [11]),
        .I1(\data_mem_reg[3] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [11]),
        .O(\data_out[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_13 
       (.I0(\data_mem_reg[8] [11]),
        .I1(\data_mem_reg[7] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [11]),
        .O(\data_out[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_6 
       (.I0(\data_mem_reg[28] [11]),
        .I1(\data_mem_reg[27] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [11]),
        .O(\data_out[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_7 
       (.I0(\data_mem_reg[32] [11]),
        .I1(\data_mem_reg[31] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [11]),
        .O(\data_out[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_8 
       (.I0(\data_mem_reg[20] [11]),
        .I1(\data_mem_reg[19] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [11]),
        .O(\data_out[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[11]_i_9 
       (.I0(\data_mem_reg[24] [11]),
        .I1(\data_mem_reg[23] [11]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [11]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [11]),
        .O(\data_out[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_1 
       (.I0(\data_out_reg[1]_i_2_n_0 ),
        .I1(\data_out_reg[1]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[1]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[1]_i_5_n_0 ),
        .O(data_mem[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_10 
       (.I0(\data_mem_reg[12] [1]),
        .I1(\data_mem_reg[11] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [1]),
        .O(\data_out[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_11 
       (.I0(\data_mem_reg[16] [1]),
        .I1(\data_mem_reg[15] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [1]),
        .O(\data_out[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_12 
       (.I0(\data_mem_reg[4] [1]),
        .I1(\data_mem_reg[3] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [1]),
        .O(\data_out[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_13 
       (.I0(\data_mem_reg[8] [1]),
        .I1(\data_mem_reg[7] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [1]),
        .O(\data_out[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_6 
       (.I0(\data_mem_reg[28] [1]),
        .I1(\data_mem_reg[27] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [1]),
        .O(\data_out[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_7 
       (.I0(\data_mem_reg[32] [1]),
        .I1(\data_mem_reg[31] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [1]),
        .O(\data_out[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_8 
       (.I0(\data_mem_reg[20] [1]),
        .I1(\data_mem_reg[19] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [1]),
        .O(\data_out[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[1]_i_9 
       (.I0(\data_mem_reg[24] [1]),
        .I1(\data_mem_reg[23] [1]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [1]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [1]),
        .O(\data_out[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_1 
       (.I0(\data_out_reg[2]_i_2_n_0 ),
        .I1(\data_out_reg[2]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[2]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[2]_i_5_n_0 ),
        .O(data_mem[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_10 
       (.I0(\data_mem_reg[12] [2]),
        .I1(\data_mem_reg[11] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [2]),
        .O(\data_out[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_11 
       (.I0(\data_mem_reg[16] [2]),
        .I1(\data_mem_reg[15] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [2]),
        .O(\data_out[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_12 
       (.I0(\data_mem_reg[4] [2]),
        .I1(\data_mem_reg[3] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [2]),
        .O(\data_out[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_13 
       (.I0(\data_mem_reg[8] [2]),
        .I1(\data_mem_reg[7] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [2]),
        .O(\data_out[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_6 
       (.I0(\data_mem_reg[28] [2]),
        .I1(\data_mem_reg[27] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [2]),
        .O(\data_out[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_7 
       (.I0(\data_mem_reg[32] [2]),
        .I1(\data_mem_reg[31] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [2]),
        .O(\data_out[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_8 
       (.I0(\data_mem_reg[20] [2]),
        .I1(\data_mem_reg[19] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [2]),
        .O(\data_out[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[2]_i_9 
       (.I0(\data_mem_reg[24] [2]),
        .I1(\data_mem_reg[23] [2]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [2]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [2]),
        .O(\data_out[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_1 
       (.I0(\data_out_reg[3]_i_2_n_0 ),
        .I1(\data_out_reg[3]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[3]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[3]_i_5_n_0 ),
        .O(data_mem[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_10 
       (.I0(\data_mem_reg[12] [3]),
        .I1(\data_mem_reg[11] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [3]),
        .O(\data_out[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_11 
       (.I0(\data_mem_reg[16] [3]),
        .I1(\data_mem_reg[15] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [3]),
        .O(\data_out[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_12 
       (.I0(\data_mem_reg[4] [3]),
        .I1(\data_mem_reg[3] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [3]),
        .O(\data_out[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_13 
       (.I0(\data_mem_reg[8] [3]),
        .I1(\data_mem_reg[7] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [3]),
        .O(\data_out[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_6 
       (.I0(\data_mem_reg[28] [3]),
        .I1(\data_mem_reg[27] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [3]),
        .O(\data_out[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_7 
       (.I0(\data_mem_reg[32] [3]),
        .I1(\data_mem_reg[31] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [3]),
        .O(\data_out[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_8 
       (.I0(\data_mem_reg[20] [3]),
        .I1(\data_mem_reg[19] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [3]),
        .O(\data_out[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[3]_i_9 
       (.I0(\data_mem_reg[24] [3]),
        .I1(\data_mem_reg[23] [3]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [3]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [3]),
        .O(\data_out[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_1 
       (.I0(\data_out_reg[4]_i_2_n_0 ),
        .I1(\data_out_reg[4]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[4]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[4]_i_5_n_0 ),
        .O(data_mem[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_10 
       (.I0(\data_mem_reg[12] [4]),
        .I1(\data_mem_reg[11] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [4]),
        .O(\data_out[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_11 
       (.I0(\data_mem_reg[16] [4]),
        .I1(\data_mem_reg[15] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [4]),
        .O(\data_out[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_12 
       (.I0(\data_mem_reg[4] [4]),
        .I1(\data_mem_reg[3] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [4]),
        .O(\data_out[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_13 
       (.I0(\data_mem_reg[8] [4]),
        .I1(\data_mem_reg[7] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [4]),
        .O(\data_out[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_6 
       (.I0(\data_mem_reg[28] [4]),
        .I1(\data_mem_reg[27] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [4]),
        .O(\data_out[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_7 
       (.I0(\data_mem_reg[32] [4]),
        .I1(\data_mem_reg[31] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [4]),
        .O(\data_out[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_8 
       (.I0(\data_mem_reg[20] [4]),
        .I1(\data_mem_reg[19] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [4]),
        .O(\data_out[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[4]_i_9 
       (.I0(\data_mem_reg[24] [4]),
        .I1(\data_mem_reg[23] [4]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [4]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [4]),
        .O(\data_out[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_1 
       (.I0(\data_out_reg[5]_i_2_n_0 ),
        .I1(\data_out_reg[5]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[5]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[5]_i_5_n_0 ),
        .O(data_mem[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_10 
       (.I0(\data_mem_reg[12] [5]),
        .I1(\data_mem_reg[11] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [5]),
        .O(\data_out[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_11 
       (.I0(\data_mem_reg[16] [5]),
        .I1(\data_mem_reg[15] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [5]),
        .O(\data_out[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_12 
       (.I0(\data_mem_reg[4] [5]),
        .I1(\data_mem_reg[3] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [5]),
        .O(\data_out[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_13 
       (.I0(\data_mem_reg[8] [5]),
        .I1(\data_mem_reg[7] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [5]),
        .O(\data_out[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_6 
       (.I0(\data_mem_reg[28] [5]),
        .I1(\data_mem_reg[27] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [5]),
        .O(\data_out[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_7 
       (.I0(\data_mem_reg[32] [5]),
        .I1(\data_mem_reg[31] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [5]),
        .O(\data_out[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_8 
       (.I0(\data_mem_reg[20] [5]),
        .I1(\data_mem_reg[19] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [5]),
        .O(\data_out[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[5]_i_9 
       (.I0(\data_mem_reg[24] [5]),
        .I1(\data_mem_reg[23] [5]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [5]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [5]),
        .O(\data_out[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_1 
       (.I0(\data_out_reg[6]_i_2_n_0 ),
        .I1(\data_out_reg[6]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[6]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[6]_i_5_n_0 ),
        .O(data_mem[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_10 
       (.I0(\data_mem_reg[12] [6]),
        .I1(\data_mem_reg[11] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [6]),
        .O(\data_out[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_11 
       (.I0(\data_mem_reg[16] [6]),
        .I1(\data_mem_reg[15] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [6]),
        .O(\data_out[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_12 
       (.I0(\data_mem_reg[4] [6]),
        .I1(\data_mem_reg[3] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [6]),
        .O(\data_out[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_13 
       (.I0(\data_mem_reg[8] [6]),
        .I1(\data_mem_reg[7] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [6]),
        .O(\data_out[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_6 
       (.I0(\data_mem_reg[28] [6]),
        .I1(\data_mem_reg[27] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [6]),
        .O(\data_out[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_7 
       (.I0(\data_mem_reg[32] [6]),
        .I1(\data_mem_reg[31] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [6]),
        .O(\data_out[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_8 
       (.I0(\data_mem_reg[20] [6]),
        .I1(\data_mem_reg[19] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [6]),
        .O(\data_out[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[6]_i_9 
       (.I0(\data_mem_reg[24] [6]),
        .I1(\data_mem_reg[23] [6]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [6]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [6]),
        .O(\data_out[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_1 
       (.I0(\data_out_reg[7]_i_2_n_0 ),
        .I1(\data_out_reg[7]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[7]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[7]_i_5_n_0 ),
        .O(data_mem[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_10 
       (.I0(\data_mem_reg[12] [7]),
        .I1(\data_mem_reg[11] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [7]),
        .O(\data_out[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_11 
       (.I0(\data_mem_reg[16] [7]),
        .I1(\data_mem_reg[15] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [7]),
        .O(\data_out[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_12 
       (.I0(\data_mem_reg[4] [7]),
        .I1(\data_mem_reg[3] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [7]),
        .O(\data_out[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_13 
       (.I0(\data_mem_reg[8] [7]),
        .I1(\data_mem_reg[7] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [7]),
        .O(\data_out[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_6 
       (.I0(\data_mem_reg[28] [7]),
        .I1(\data_mem_reg[27] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [7]),
        .O(\data_out[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_7 
       (.I0(\data_mem_reg[32] [7]),
        .I1(\data_mem_reg[31] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [7]),
        .O(\data_out[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_8 
       (.I0(\data_mem_reg[20] [7]),
        .I1(\data_mem_reg[19] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [7]),
        .O(\data_out[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[7]_i_9 
       (.I0(\data_mem_reg[24] [7]),
        .I1(\data_mem_reg[23] [7]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [7]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [7]),
        .O(\data_out[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_1 
       (.I0(\data_out_reg[8]_i_2_n_0 ),
        .I1(\data_out_reg[8]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[8]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[8]_i_5_n_0 ),
        .O(data_mem[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_10 
       (.I0(\data_mem_reg[12] [8]),
        .I1(\data_mem_reg[11] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [8]),
        .O(\data_out[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_11 
       (.I0(\data_mem_reg[16] [8]),
        .I1(\data_mem_reg[15] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [8]),
        .O(\data_out[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_12 
       (.I0(\data_mem_reg[4] [8]),
        .I1(\data_mem_reg[3] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [8]),
        .O(\data_out[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_13 
       (.I0(\data_mem_reg[8] [8]),
        .I1(\data_mem_reg[7] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [8]),
        .O(\data_out[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_6 
       (.I0(\data_mem_reg[28] [8]),
        .I1(\data_mem_reg[27] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [8]),
        .O(\data_out[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_7 
       (.I0(\data_mem_reg[32] [8]),
        .I1(\data_mem_reg[31] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [8]),
        .O(\data_out[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_8 
       (.I0(\data_mem_reg[20] [8]),
        .I1(\data_mem_reg[19] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [8]),
        .O(\data_out[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[8]_i_9 
       (.I0(\data_mem_reg[24] [8]),
        .I1(\data_mem_reg[23] [8]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [8]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [8]),
        .O(\data_out[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_1 
       (.I0(\data_out_reg[9]_i_2_n_0 ),
        .I1(\data_out_reg[9]_i_3_n_0 ),
        .I2(data_out_ch[4]),
        .I3(\data_out_reg[9]_i_4_n_0 ),
        .I4(data_out_ch[3]),
        .I5(\data_out_reg[9]_i_5_n_0 ),
        .O(data_mem[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_10 
       (.I0(\data_mem_reg[12] [9]),
        .I1(\data_mem_reg[11] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[10] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[9] [9]),
        .O(\data_out[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_11 
       (.I0(\data_mem_reg[16] [9]),
        .I1(\data_mem_reg[15] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[14] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[13] [9]),
        .O(\data_out[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_12 
       (.I0(\data_mem_reg[4] [9]),
        .I1(\data_mem_reg[3] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[2] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[1] [9]),
        .O(\data_out[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_13 
       (.I0(\data_mem_reg[8] [9]),
        .I1(\data_mem_reg[7] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[6] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[5] [9]),
        .O(\data_out[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_6 
       (.I0(\data_mem_reg[28] [9]),
        .I1(\data_mem_reg[27] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[26] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[25] [9]),
        .O(\data_out[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_7 
       (.I0(\data_mem_reg[32] [9]),
        .I1(\data_mem_reg[31] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[30] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[29] [9]),
        .O(\data_out[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_8 
       (.I0(\data_mem_reg[20] [9]),
        .I1(\data_mem_reg[19] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[18] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[17] [9]),
        .O(\data_out[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_out[9]_i_9 
       (.I0(\data_mem_reg[24] [9]),
        .I1(\data_mem_reg[23] [9]),
        .I2(data_out_ch[1]),
        .I3(\data_mem_reg[22] [9]),
        .I4(data_out_ch[0]),
        .I5(\data_mem_reg[21] [9]),
        .O(\data_out[9]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out_ch[0]_i_1 
       (.I0(data_out_ch[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \data_out_ch[1]_i_1 
       (.I0(data_out_ch[0]),
        .I1(data_out_ch[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \data_out_ch[2]_i_1 
       (.I0(data_out_ch[2]),
        .I1(data_out_ch[1]),
        .I2(data_out_ch[0]),
        .O(\data_out_ch[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \data_out_ch[3]_i_1 
       (.I0(data_out_ch[3]),
        .I1(data_out_ch[2]),
        .I2(data_out_ch[0]),
        .I3(data_out_ch[1]),
        .O(\data_out_ch[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out_ch[4]_i_1 
       (.I0(rstn),
        .O(\data_out_ch[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \data_out_ch[4]_i_2 
       (.I0(data_out_ch[4]),
        .I1(data_out_ch[1]),
        .I2(data_out_ch[0]),
        .I3(data_out_ch[2]),
        .I4(data_out_ch[3]),
        .O(p_0_in__0[4]));
  FDRE \data_out_ch_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(data_out_ch[0]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  FDRE \data_out_ch_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(data_out_ch[1]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  FDRE \data_out_ch_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out_ch[2]_i_1_n_0 ),
        .Q(data_out_ch[2]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  FDRE \data_out_ch_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_out_ch[3]_i_1_n_0 ),
        .Q(data_out_ch[3]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  FDRE \data_out_ch_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(data_out_ch[4]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  FDRE \data_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[0]),
        .Q(data_out[0]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[0]_i_2 
       (.I0(\data_out[0]_i_6_n_0 ),
        .I1(\data_out[0]_i_7_n_0 ),
        .O(\data_out_reg[0]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[0]_i_3 
       (.I0(\data_out[0]_i_8_n_0 ),
        .I1(\data_out[0]_i_9_n_0 ),
        .O(\data_out_reg[0]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[0]_i_4 
       (.I0(\data_out[0]_i_10_n_0 ),
        .I1(\data_out[0]_i_11_n_0 ),
        .O(\data_out_reg[0]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[0]_i_5 
       (.I0(\data_out[0]_i_12_n_0 ),
        .I1(\data_out[0]_i_13_n_0 ),
        .O(\data_out_reg[0]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[10]),
        .Q(data_out[10]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[10]_i_2 
       (.I0(\data_out[10]_i_6_n_0 ),
        .I1(\data_out[10]_i_7_n_0 ),
        .O(\data_out_reg[10]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[10]_i_3 
       (.I0(\data_out[10]_i_8_n_0 ),
        .I1(\data_out[10]_i_9_n_0 ),
        .O(\data_out_reg[10]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[10]_i_4 
       (.I0(\data_out[10]_i_10_n_0 ),
        .I1(\data_out[10]_i_11_n_0 ),
        .O(\data_out_reg[10]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[10]_i_5 
       (.I0(\data_out[10]_i_12_n_0 ),
        .I1(\data_out[10]_i_13_n_0 ),
        .O(\data_out_reg[10]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[11]),
        .Q(data_out[11]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[11]_i_2 
       (.I0(\data_out[11]_i_6_n_0 ),
        .I1(\data_out[11]_i_7_n_0 ),
        .O(\data_out_reg[11]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[11]_i_3 
       (.I0(\data_out[11]_i_8_n_0 ),
        .I1(\data_out[11]_i_9_n_0 ),
        .O(\data_out_reg[11]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[11]_i_4 
       (.I0(\data_out[11]_i_10_n_0 ),
        .I1(\data_out[11]_i_11_n_0 ),
        .O(\data_out_reg[11]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[11]_i_5 
       (.I0(\data_out[11]_i_12_n_0 ),
        .I1(\data_out[11]_i_13_n_0 ),
        .O(\data_out_reg[11]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[1]),
        .Q(data_out[1]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[1]_i_2 
       (.I0(\data_out[1]_i_6_n_0 ),
        .I1(\data_out[1]_i_7_n_0 ),
        .O(\data_out_reg[1]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[1]_i_3 
       (.I0(\data_out[1]_i_8_n_0 ),
        .I1(\data_out[1]_i_9_n_0 ),
        .O(\data_out_reg[1]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[1]_i_4 
       (.I0(\data_out[1]_i_10_n_0 ),
        .I1(\data_out[1]_i_11_n_0 ),
        .O(\data_out_reg[1]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[1]_i_5 
       (.I0(\data_out[1]_i_12_n_0 ),
        .I1(\data_out[1]_i_13_n_0 ),
        .O(\data_out_reg[1]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[2]),
        .Q(data_out[2]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[2]_i_2 
       (.I0(\data_out[2]_i_6_n_0 ),
        .I1(\data_out[2]_i_7_n_0 ),
        .O(\data_out_reg[2]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[2]_i_3 
       (.I0(\data_out[2]_i_8_n_0 ),
        .I1(\data_out[2]_i_9_n_0 ),
        .O(\data_out_reg[2]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[2]_i_4 
       (.I0(\data_out[2]_i_10_n_0 ),
        .I1(\data_out[2]_i_11_n_0 ),
        .O(\data_out_reg[2]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[2]_i_5 
       (.I0(\data_out[2]_i_12_n_0 ),
        .I1(\data_out[2]_i_13_n_0 ),
        .O(\data_out_reg[2]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[3]),
        .Q(data_out[3]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[3]_i_2 
       (.I0(\data_out[3]_i_6_n_0 ),
        .I1(\data_out[3]_i_7_n_0 ),
        .O(\data_out_reg[3]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[3]_i_3 
       (.I0(\data_out[3]_i_8_n_0 ),
        .I1(\data_out[3]_i_9_n_0 ),
        .O(\data_out_reg[3]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[3]_i_4 
       (.I0(\data_out[3]_i_10_n_0 ),
        .I1(\data_out[3]_i_11_n_0 ),
        .O(\data_out_reg[3]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[3]_i_5 
       (.I0(\data_out[3]_i_12_n_0 ),
        .I1(\data_out[3]_i_13_n_0 ),
        .O(\data_out_reg[3]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[4]),
        .Q(data_out[4]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[4]_i_2 
       (.I0(\data_out[4]_i_6_n_0 ),
        .I1(\data_out[4]_i_7_n_0 ),
        .O(\data_out_reg[4]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[4]_i_3 
       (.I0(\data_out[4]_i_8_n_0 ),
        .I1(\data_out[4]_i_9_n_0 ),
        .O(\data_out_reg[4]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[4]_i_4 
       (.I0(\data_out[4]_i_10_n_0 ),
        .I1(\data_out[4]_i_11_n_0 ),
        .O(\data_out_reg[4]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[4]_i_5 
       (.I0(\data_out[4]_i_12_n_0 ),
        .I1(\data_out[4]_i_13_n_0 ),
        .O(\data_out_reg[4]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[5]),
        .Q(data_out[5]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[5]_i_2 
       (.I0(\data_out[5]_i_6_n_0 ),
        .I1(\data_out[5]_i_7_n_0 ),
        .O(\data_out_reg[5]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[5]_i_3 
       (.I0(\data_out[5]_i_8_n_0 ),
        .I1(\data_out[5]_i_9_n_0 ),
        .O(\data_out_reg[5]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[5]_i_4 
       (.I0(\data_out[5]_i_10_n_0 ),
        .I1(\data_out[5]_i_11_n_0 ),
        .O(\data_out_reg[5]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[5]_i_5 
       (.I0(\data_out[5]_i_12_n_0 ),
        .I1(\data_out[5]_i_13_n_0 ),
        .O(\data_out_reg[5]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[6]),
        .Q(data_out[6]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[6]_i_2 
       (.I0(\data_out[6]_i_6_n_0 ),
        .I1(\data_out[6]_i_7_n_0 ),
        .O(\data_out_reg[6]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[6]_i_3 
       (.I0(\data_out[6]_i_8_n_0 ),
        .I1(\data_out[6]_i_9_n_0 ),
        .O(\data_out_reg[6]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[6]_i_4 
       (.I0(\data_out[6]_i_10_n_0 ),
        .I1(\data_out[6]_i_11_n_0 ),
        .O(\data_out_reg[6]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[6]_i_5 
       (.I0(\data_out[6]_i_12_n_0 ),
        .I1(\data_out[6]_i_13_n_0 ),
        .O(\data_out_reg[6]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[7]),
        .Q(data_out[7]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[7]_i_2 
       (.I0(\data_out[7]_i_6_n_0 ),
        .I1(\data_out[7]_i_7_n_0 ),
        .O(\data_out_reg[7]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[7]_i_3 
       (.I0(\data_out[7]_i_8_n_0 ),
        .I1(\data_out[7]_i_9_n_0 ),
        .O(\data_out_reg[7]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[7]_i_4 
       (.I0(\data_out[7]_i_10_n_0 ),
        .I1(\data_out[7]_i_11_n_0 ),
        .O(\data_out_reg[7]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[7]_i_5 
       (.I0(\data_out[7]_i_12_n_0 ),
        .I1(\data_out[7]_i_13_n_0 ),
        .O(\data_out_reg[7]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[8]),
        .Q(data_out[8]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[8]_i_2 
       (.I0(\data_out[8]_i_6_n_0 ),
        .I1(\data_out[8]_i_7_n_0 ),
        .O(\data_out_reg[8]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[8]_i_3 
       (.I0(\data_out[8]_i_8_n_0 ),
        .I1(\data_out[8]_i_9_n_0 ),
        .O(\data_out_reg[8]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[8]_i_4 
       (.I0(\data_out[8]_i_10_n_0 ),
        .I1(\data_out[8]_i_11_n_0 ),
        .O(\data_out_reg[8]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[8]_i_5 
       (.I0(\data_out[8]_i_12_n_0 ),
        .I1(\data_out[8]_i_13_n_0 ),
        .O(\data_out_reg[8]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \data_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data_mem[9]),
        .Q(data_out[9]),
        .R(\data_out_ch[4]_i_1_n_0 ));
  MUXF7 \data_out_reg[9]_i_2 
       (.I0(\data_out[9]_i_6_n_0 ),
        .I1(\data_out[9]_i_7_n_0 ),
        .O(\data_out_reg[9]_i_2_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[9]_i_3 
       (.I0(\data_out[9]_i_8_n_0 ),
        .I1(\data_out[9]_i_9_n_0 ),
        .O(\data_out_reg[9]_i_3_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[9]_i_4 
       (.I0(\data_out[9]_i_10_n_0 ),
        .I1(\data_out[9]_i_11_n_0 ),
        .O(\data_out_reg[9]_i_4_n_0 ),
        .S(data_out_ch[2]));
  MUXF7 \data_out_reg[9]_i_5 
       (.I0(\data_out[9]_i_12_n_0 ),
        .I1(\data_out[9]_i_13_n_0 ),
        .O(\data_out_reg[9]_i_5_n_0 ),
        .S(data_out_ch[2]));
  FDRE \link_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(link[0]),
        .R(1'b0));
  FDRE \link_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(link[1]),
        .R(1'b0));
  FDRE \link_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(link[2]),
        .R(1'b0));
  FDRE \link_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(link[3]),
        .R(1'b0));
  FDRE \sublink_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][5] ),
        .Q(sublink[0]),
        .R(1'b0));
  FDRE \sublink_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][6] ),
        .Q(sublink[1]),
        .R(1'b0));
  FDRE \sublink_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\data_mem_reg_n_0_[0][7] ),
        .Q(sublink[2]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
