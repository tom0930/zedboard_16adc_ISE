// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  5 17:13:45 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_D_flip_flops_4_0_7_stub.v
// Design      : design_1_D_flip_flops_4_0_7
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "D_flip_flops_4,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rstn, D1, D2, D3, D4, Q1, Q2, Q3, Q4, Q1B, Q2B, Q3B, Q4B)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,D1,D2,D3,D4,Q1,Q2,Q3,Q4,Q1B,Q2B,Q3B,Q4B" */;
  input clk;
  input rstn;
  input D1;
  input D2;
  input D3;
  input D4;
  output Q1;
  output Q2;
  output Q3;
  output Q4;
  output Q1B;
  output Q2B;
  output Q3B;
  output Q4B;
endmodule
