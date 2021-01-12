// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  5 11:36:32 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project/zedboard_16adc/zedboard_16adc_0104/zedboard_16adc_8/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_div16_0_13/design_1_div16_0_13_stub.v
// Design      : design_1_div16_0_13
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "div16,Vivado 2018.3" *)
module design_1_div16_0_13(clk, rstn, clk_div)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,clk_div" */;
  input clk;
  input rstn;
  output clk_div;
endmodule
