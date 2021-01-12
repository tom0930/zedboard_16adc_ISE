// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Dec 29 11:35:25 2020
// Host        : EE-BRIAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_total_link_ctrl_0_0_stub.v
// Design      : design_1_total_link_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "total_link_ctrl,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, link7_err, link7_channel, link7_data, 
  link7, link_err, s00_axis_tready, s00_axis_tdata, s00_axis_tlast, s00_axis_tvalid, 
  s01_axis_tready, s01_axis_tdata, s01_axis_tlast, s01_axis_tvalid, s02_axis_tready, 
  s02_axis_tdata, s02_axis_tlast, s02_axis_tvalid, s03_axis_tready, s03_axis_tdata, 
  s03_axis_tlast, s03_axis_tvalid, m00_axis_tready, m00_axis_tdata, m00_axis_tlast, 
  m00_axis_tvalid, m01_axis_tready, m01_axis_tdata, m01_axis_tlast, m01_axis_tvalid, 
  m02_axis_tready, m02_axis_tdata, m02_axis_tlast, m02_axis_tvalid, m03_axis_tready, 
  m03_axis_tdata, m03_axis_tlast, m03_axis_tvalid)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,link7_err,link7_channel[4:0],link7_data[95:0],link7[3:0],link_err[15:0],s00_axis_tready,s00_axis_tdata[31:0],s00_axis_tlast,s00_axis_tvalid,s01_axis_tready,s01_axis_tdata[31:0],s01_axis_tlast,s01_axis_tvalid,s02_axis_tready,s02_axis_tdata[31:0],s02_axis_tlast,s02_axis_tvalid,s03_axis_tready,s03_axis_tdata[31:0],s03_axis_tlast,s03_axis_tvalid,m00_axis_tready,m00_axis_tdata[31:0],m00_axis_tlast,m00_axis_tvalid,m01_axis_tready,m01_axis_tdata[31:0],m01_axis_tlast,m01_axis_tvalid,m02_axis_tready,m02_axis_tdata[31:0],m02_axis_tlast,m02_axis_tvalid,m03_axis_tready,m03_axis_tdata[31:0],m03_axis_tlast,m03_axis_tvalid" */;
  input clk;
  input rstn;
  input link7_err;
  input [4:0]link7_channel;
  input [95:0]link7_data;
  output [3:0]link7;
  output [15:0]link_err;
  output s00_axis_tready;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  output s01_axis_tready;
  input [31:0]s01_axis_tdata;
  input s01_axis_tlast;
  input s01_axis_tvalid;
  output s02_axis_tready;
  input [31:0]s02_axis_tdata;
  input s02_axis_tlast;
  input s02_axis_tvalid;
  output s03_axis_tready;
  input [31:0]s03_axis_tdata;
  input s03_axis_tlast;
  input s03_axis_tvalid;
  input m00_axis_tready;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  input m01_axis_tready;
  output [31:0]m01_axis_tdata;
  output m01_axis_tlast;
  output m01_axis_tvalid;
  input m02_axis_tready;
  output [31:0]m02_axis_tdata;
  output m02_axis_tlast;
  output m02_axis_tvalid;
  input m03_axis_tready;
  output [31:0]m03_axis_tdata;
  output m03_axis_tlast;
  output m03_axis_tvalid;
endmodule
