// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 14:11:00 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_bram_rd_0_0_stub.v
// Design      : design_1_bram_rd_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bram_rd,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, s_axis_tready, s_axis_tdata, 
  s_axis_tlast, s_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast, m_axis_tvalid, 
  addr0a, data0a, addr1a, data1a, addr2a, data2a, addr3a, data3a, addr4a, data4a, addr5a, data5a, addr6a, 
  data6a, addr7a, data7a, addr8a, data8a, addr9a, data9a, addr10a, data10a, addr11a, data11a, addr12a, 
  data12a, addr13a, data13a, addr14a, data14a, addr15a, data15a, addr0b, data0b, addr1b, data1b, addr2b, 
  data2b, addr3b, data3b, addr4b, data4b, addr5b, data5b, addr6b, data6b, addr7b, data7b, addr8b, data8b, 
  addr9b, data9b, addr10b, data10b, addr11b, data11b, addr12b, data12b, addr13b, data13b, addr14b, 
  data14b, addr15b, data15b)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,s_axis_tready,s_axis_tdata[31:0],s_axis_tlast,s_axis_tvalid,m_axis_tready,m_axis_tdata[31:0],m_axis_tlast,m_axis_tvalid,addr0a[10:0],data0a[31:0],addr1a[10:0],data1a[31:0],addr2a[10:0],data2a[31:0],addr3a[10:0],data3a[31:0],addr4a[10:0],data4a[31:0],addr5a[10:0],data5a[31:0],addr6a[10:0],data6a[31:0],addr7a[10:0],data7a[31:0],addr8a[10:0],data8a[31:0],addr9a[10:0],data9a[31:0],addr10a[10:0],data10a[31:0],addr11a[10:0],data11a[31:0],addr12a[10:0],data12a[31:0],addr13a[10:0],data13a[31:0],addr14a[10:0],data14a[31:0],addr15a[10:0],data15a[31:0],addr0b[10:0],data0b[31:0],addr1b[10:0],data1b[31:0],addr2b[10:0],data2b[31:0],addr3b[10:0],data3b[31:0],addr4b[10:0],data4b[31:0],addr5b[10:0],data5b[31:0],addr6b[10:0],data6b[31:0],addr7b[10:0],data7b[31:0],addr8b[10:0],data8b[31:0],addr9b[10:0],data9b[31:0],addr10b[10:0],data10b[31:0],addr11b[10:0],data11b[31:0],addr12b[10:0],data12b[31:0],addr13b[10:0],data13b[31:0],addr14b[10:0],data14b[31:0],addr15b[10:0],data15b[31:0]" */;
  input clk;
  input rstn;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input s_axis_tlast;
  input s_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output m_axis_tlast;
  output m_axis_tvalid;
  output [10:0]addr0a;
  input [31:0]data0a;
  output [10:0]addr1a;
  input [31:0]data1a;
  output [10:0]addr2a;
  input [31:0]data2a;
  output [10:0]addr3a;
  input [31:0]data3a;
  output [10:0]addr4a;
  input [31:0]data4a;
  output [10:0]addr5a;
  input [31:0]data5a;
  output [10:0]addr6a;
  input [31:0]data6a;
  output [10:0]addr7a;
  input [31:0]data7a;
  output [10:0]addr8a;
  input [31:0]data8a;
  output [10:0]addr9a;
  input [31:0]data9a;
  output [10:0]addr10a;
  input [31:0]data10a;
  output [10:0]addr11a;
  input [31:0]data11a;
  output [10:0]addr12a;
  input [31:0]data12a;
  output [10:0]addr13a;
  input [31:0]data13a;
  output [10:0]addr14a;
  input [31:0]data14a;
  output [10:0]addr15a;
  input [31:0]data15a;
  output [10:0]addr0b;
  input [31:0]data0b;
  output [10:0]addr1b;
  input [31:0]data1b;
  output [10:0]addr2b;
  input [31:0]data2b;
  output [10:0]addr3b;
  input [31:0]data3b;
  output [10:0]addr4b;
  input [31:0]data4b;
  output [10:0]addr5b;
  input [31:0]data5b;
  output [10:0]addr6b;
  input [31:0]data6b;
  output [10:0]addr7b;
  input [31:0]data7b;
  output [10:0]addr8b;
  input [31:0]data8b;
  output [10:0]addr9b;
  input [31:0]data9b;
  output [10:0]addr10b;
  input [31:0]data10b;
  output [10:0]addr11b;
  input [31:0]data11b;
  output [10:0]addr12b;
  input [31:0]data12b;
  output [10:0]addr13b;
  input [31:0]data13b;
  output [10:0]addr14b;
  input [31:0]data14b;
  output [10:0]addr15b;
  input [31:0]data15b;
endmodule
