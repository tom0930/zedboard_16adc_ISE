// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 11:47:42 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_s2p_0_0_stub.v
// Design      : design_1_s2p_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "s2p,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, clk_100M, rstn, rstn_100M, data_in, link, 
  link_err, address, data_out)
/* synthesis syn_black_box black_box_pad_pin="clk,clk_100M,rstn,rstn_100M,data_in,link[3:0],link_err,address[10:0],data_out[31:0]" */;
  input clk;
  input clk_100M;
  input rstn;
  input rstn_100M;
  input data_in;
  input [3:0]link;
  output link_err;
  output [10:0]address;
  output [31:0]data_out;
endmodule
