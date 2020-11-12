// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Oct 22 10:11:43 2020
// Host        : DESKTOP-U60VC6L running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/zedboard_16adc/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_total_link_ctrl_0_0/design_1_total_link_ctrl_0_0_stub.v
// Design      : design_1_total_link_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "total_link_ctrl,Vivado 2018.3" *)
module design_1_total_link_ctrl_0_0(clk, rstn, link7_err, link7_channel, link7_data, 
  link7, link_err, ctrl_index_0, ctrl_index_1, ctrl_index_2, ctrl_index_3, we_index, we_result, 
  data_in_index_0, en_index_0, addr_index_0, data_in_index_1, en_index_1, addr_index_1, 
  data_in_index_2, en_index_2, addr_index_2, data_in_index_3, en_index_3, addr_index_3, 
  data_out_result_0, en_result_0, addr_result_0, data_out_result_1, en_result_1, 
  addr_result_1, data_out_result_2, en_result_2, addr_result_2, data_out_result_3, 
  en_result_3, addr_result_3)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,link7_err,link7_channel[4:0],link7_data[95:0],link7[3:0],link_err[15:0],ctrl_index_0,ctrl_index_1,ctrl_index_2,ctrl_index_3,we_index[3:0],we_result[3:0],data_in_index_0[31:0],en_index_0,addr_index_0[31:0],data_in_index_1[31:0],en_index_1,addr_index_1[31:0],data_in_index_2[31:0],en_index_2,addr_index_2[31:0],data_in_index_3[31:0],en_index_3,addr_index_3[31:0],data_out_result_0[31:0],en_result_0,addr_result_0[31:0],data_out_result_1[31:0],en_result_1,addr_result_1[31:0],data_out_result_2[31:0],en_result_2,addr_result_2[31:0],data_out_result_3[31:0],en_result_3,addr_result_3[31:0]" */;
  input clk;
  input rstn;
  input link7_err;
  input [4:0]link7_channel;
  input [95:0]link7_data;
  output [3:0]link7;
  output [15:0]link_err;
  input ctrl_index_0;
  input ctrl_index_1;
  input ctrl_index_2;
  input ctrl_index_3;
  output [3:0]we_index;
  output [3:0]we_result;
  input [31:0]data_in_index_0;
  output en_index_0;
  output [31:0]addr_index_0;
  input [31:0]data_in_index_1;
  output en_index_1;
  output [31:0]addr_index_1;
  input [31:0]data_in_index_2;
  output en_index_2;
  output [31:0]addr_index_2;
  input [31:0]data_in_index_3;
  output en_index_3;
  output [31:0]addr_index_3;
  output [31:0]data_out_result_0;
  output en_result_0;
  output [31:0]addr_result_0;
  output [31:0]data_out_result_1;
  output en_result_1;
  output [31:0]addr_result_1;
  output [31:0]data_out_result_2;
  output en_result_2;
  output [31:0]addr_result_2;
  output [31:0]data_out_result_3;
  output en_result_3;
  output [31:0]addr_result_3;
endmodule
