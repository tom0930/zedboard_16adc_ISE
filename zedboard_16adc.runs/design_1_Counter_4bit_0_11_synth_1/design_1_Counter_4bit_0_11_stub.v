// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  5 11:35:40 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Counter_4bit_0_11_stub.v
// Design      : design_1_Counter_4bit_0_11
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Counter_4bit,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, value, rstn, enp, ent, loadn, out0, out1, out2, out3)
/* synthesis syn_black_box black_box_pad_pin="clk,value[3:0],rstn,enp,ent,loadn,out0,out1,out2,out3" */;
  input clk;
  input [3:0]value;
  input rstn;
  input enp;
  input ent;
  input loadn;
  output out0;
  output out1;
  output out2;
  output out3;
endmodule
