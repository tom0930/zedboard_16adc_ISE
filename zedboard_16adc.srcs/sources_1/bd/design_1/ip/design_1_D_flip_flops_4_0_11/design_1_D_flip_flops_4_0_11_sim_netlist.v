// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  5 11:35:42 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/zedboard_16adc/zedboard_16adc_0104/zedboard_16adc_8/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_D_flip_flops_4_0_11/design_1_D_flip_flops_4_0_11_sim_netlist.v
// Design      : design_1_D_flip_flops_4_0_11
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_D_flip_flops_4_0_11,D_flip_flops_4,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "D_flip_flops_4,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_D_flip_flops_4_0_11
   (clk,
    rstn,
    D1,
    D2,
    D3,
    D4,
    Q1,
    Q2,
    Q3,
    Q4,
    Q1B,
    Q2B,
    Q3B,
    Q4B);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 16000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
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

  wire D1;
  wire D2;
  wire D3;
  wire D4;
  wire Q1;
  wire Q1B;
  wire Q2;
  wire Q2B;
  wire Q3;
  wire Q3B;
  wire Q4;
  wire Q4B;
  wire clk;
  wire rstn;

  design_1_D_flip_flops_4_0_11_D_flip_flops_4 inst
       (.D1(D1),
        .D2(D2),
        .D3(D3),
        .D4(D4),
        .Q1(Q1),
        .Q1B(Q1B),
        .Q2(Q2),
        .Q2B(Q2B),
        .Q3(Q3),
        .Q3B(Q3B),
        .Q4(Q4),
        .Q4B(Q4B),
        .clk(clk),
        .rstn(rstn));
endmodule

(* ORIG_REF_NAME = "D_flip_flops_4" *) 
module design_1_D_flip_flops_4_0_11_D_flip_flops_4
   (Q1,
    Q2,
    Q3,
    Q4,
    Q1B,
    Q2B,
    Q3B,
    Q4B,
    D1,
    clk,
    D2,
    D3,
    D4,
    rstn);
  output Q1;
  output Q2;
  output Q3;
  output Q4;
  output Q1B;
  output Q2B;
  output Q3B;
  output Q4B;
  input D1;
  input clk;
  input D2;
  input D3;
  input D4;
  input rstn;

  wire D1;
  wire D2;
  wire D3;
  wire D4;
  wire Q1;
  wire Q1B;
  wire Q2;
  wire Q2B;
  wire Q2B_i_1_n_0;
  wire Q3;
  wire Q3B;
  wire Q3B_i_1_n_0;
  wire Q4;
  wire Q4B;
  wire Q4B_i_1_n_0;
  wire clk;
  wire p_0_in;
  wire p_1_in;
  wire rstn;

  LUT1 #(
    .INIT(2'h1)) 
    Q1B_i_1
       (.I0(D1),
        .O(p_1_in));
  FDRE Q1B_reg
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in),
        .Q(Q1B),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    Q1_i_1
       (.I0(rstn),
        .O(p_0_in));
  FDRE Q1_reg
       (.C(clk),
        .CE(1'b1),
        .D(D1),
        .Q(Q1),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    Q2B_i_1
       (.I0(D2),
        .O(Q2B_i_1_n_0));
  FDRE Q2B_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q2B_i_1_n_0),
        .Q(Q2B),
        .R(p_0_in));
  FDRE Q2_reg
       (.C(clk),
        .CE(1'b1),
        .D(D2),
        .Q(Q2),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    Q3B_i_1
       (.I0(D3),
        .O(Q3B_i_1_n_0));
  FDRE Q3B_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q3B_i_1_n_0),
        .Q(Q3B),
        .R(p_0_in));
  FDRE Q3_reg
       (.C(clk),
        .CE(1'b1),
        .D(D3),
        .Q(Q3),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    Q4B_i_1
       (.I0(D4),
        .O(Q4B_i_1_n_0));
  FDRE Q4B_reg
       (.C(clk),
        .CE(1'b1),
        .D(Q4B_i_1_n_0),
        .Q(Q4B),
        .R(p_0_in));
  FDRE Q4_reg
       (.C(clk),
        .CE(1'b1),
        .D(D4),
        .Q(Q4),
        .R(p_0_in));
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
