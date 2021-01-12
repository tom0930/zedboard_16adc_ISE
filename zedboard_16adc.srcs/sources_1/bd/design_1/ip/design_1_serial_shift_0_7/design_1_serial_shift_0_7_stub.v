// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  5 17:13:46 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/project/zedboard_16adc/zedboard_16adc_0104/zedboard_16adc_16/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_serial_shift_0_7/design_1_serial_shift_0_7_stub.v
// Design      : design_1_serial_shift_0_7
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "serial_shift,Vivado 2018.3" *)
module design_1_serial_shift_0_7(clk, rstn, data_in, Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7)
/* synthesis syn_black_box black_box_pad_pin="clk,rstn,data_in,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7" */;
  input clk;
  input rstn;
  input data_in;
  output Q0;
  output Q1;
  output Q2;
  output Q3;
  output Q4;
  output Q5;
  output Q6;
  output Q7;
endmodule
