// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jan  5 11:35:38 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/project/zedboard_16adc/zedboard_16adc_0104/zedboard_16adc_8/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_Counter_4bit_0_12/design_1_Counter_4bit_0_12_sim_netlist.v
// Design      : design_1_Counter_4bit_0_12
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_Counter_4bit_0_12,Counter_4bit,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Counter_4bit,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_Counter_4bit_0_12
   (clk,
    value,
    rstn,
    enp,
    ent,
    loadn,
    out0,
    out1,
    out2,
    out3);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 16000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input [3:0]value;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input enp;
  input ent;
  input loadn;
  output out0;
  output out1;
  output out2;
  output out3;

  wire clk;
  wire enp;
  wire ent;
  wire loadn;
  wire out0;
  wire out1;
  wire out2;
  wire out3;
  wire rstn;
  wire [3:0]value;

  design_1_Counter_4bit_0_12_Counter_4bit inst
       (.Q({out3,out2,out1,out0}),
        .clk(clk),
        .enp(enp),
        .ent(ent),
        .loadn(loadn),
        .rstn(rstn),
        .value(value));
endmodule

(* ORIG_REF_NAME = "Counter_4bit" *) 
module design_1_Counter_4bit_0_12_Counter_4bit
   (Q,
    clk,
    enp,
    ent,
    loadn,
    value,
    rstn);
  output [3:0]Q;
  input clk;
  input enp;
  input ent;
  input loadn;
  input [3:0]value;
  input rstn;

  wire [3:0]Q;
  wire clk;
  wire enp;
  wire ent;
  wire loadn;
  wire \out[0]_i_2_n_0 ;
  wire \out[0]_i_3_n_0 ;
  wire \out[1]_i_1_n_0 ;
  wire \out[2]_i_1_n_0 ;
  wire \out[2]_i_2_n_0 ;
  wire \out[3]_i_1_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire p_0_in;
  wire rstn;
  wire [3:0]value;

  LUT1 #(
    .INIT(2'h1)) 
    \out[0]_i_1 
       (.I0(rstn),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h8F)) 
    \out[0]_i_2 
       (.I0(enp),
        .I1(ent),
        .I2(loadn),
        .O(\out[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \out[0]_i_3 
       (.I0(ent),
        .I1(enp),
        .I2(Q[0]),
        .I3(loadn),
        .I4(value[0]),
        .O(\out[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0880FFFF08800000)) 
    \out[1]_i_1 
       (.I0(ent),
        .I1(enp),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(loadn),
        .I5(value[1]),
        .O(\out[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888FFFF28880000)) 
    \out[2]_i_1 
       (.I0(\out[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(loadn),
        .I5(value[2]),
        .O(\out[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \out[2]_i_2 
       (.I0(enp),
        .I1(loadn),
        .I2(ent),
        .O(\out[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888FFFF28880000)) 
    \out[3]_i_1 
       (.I0(\out[2]_i_2_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(\out[3]_i_2_n_0 ),
        .I4(loadn),
        .I5(value[3]),
        .O(\out[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \out[3]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\out[3]_i_2_n_0 ));
  FDRE \out_reg[0] 
       (.C(clk),
        .CE(\out[0]_i_2_n_0 ),
        .D(\out[0]_i_3_n_0 ),
        .Q(Q[0]),
        .R(p_0_in));
  FDRE \out_reg[1] 
       (.C(clk),
        .CE(\out[0]_i_2_n_0 ),
        .D(\out[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(p_0_in));
  FDRE \out_reg[2] 
       (.C(clk),
        .CE(\out[0]_i_2_n_0 ),
        .D(\out[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(p_0_in));
  FDRE \out_reg[3] 
       (.C(clk),
        .CE(\out[0]_i_2_n_0 ),
        .D(\out[3]_i_1_n_0 ),
        .Q(Q[3]),
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
