// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Dec 29 11:35:25 2020
// Host        : EE-BRIAN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/zedboard_16adc/zedboard_16adc_1223_FixValue/zedboard_16adc/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_total_link_ctrl_0_0/design_1_total_link_ctrl_0_0_sim_netlist.v
// Design      : design_1_total_link_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_total_link_ctrl_0_0,total_link_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "total_link_ctrl,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_total_link_ctrl_0_0
   (clk,
    rstn,
    link7_err,
    link7_channel,
    link7_data,
    link7,
    link_err,
    s00_axis_tready,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axis_tvalid,
    s01_axis_tready,
    s01_axis_tdata,
    s01_axis_tlast,
    s01_axis_tvalid,
    s02_axis_tready,
    s02_axis_tdata,
    s02_axis_tlast,
    s02_axis_tvalid,
    s03_axis_tready,
    s03_axis_tdata,
    s03_axis_tlast,
    s03_axis_tvalid,
    m00_axis_tready,
    m00_axis_tdata,
    m00_axis_tlast,
    m00_axis_tvalid,
    m01_axis_tready,
    m01_axis_tdata,
    m01_axis_tlast,
    m01_axis_tvalid,
    m02_axis_tready,
    m02_axis_tdata,
    m02_axis_tlast,
    m02_axis_tvalid,
    m03_axis_tready,
    m03_axis_tdata,
    m03_axis_tlast,
    m03_axis_tvalid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:m01_axis:m02_axis:m03_axis:s00_axis:s01_axis:s02_axis:s03_axis, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  input link7_err;
  input [4:0]link7_channel;
  input [95:0]link7_data;
  output [3:0]link7;
  output [15:0]link_err;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) input [31:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *) input s00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TREADY" *) output s01_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TDATA" *) input [31:0]s01_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TLAST" *) input s01_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s01_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TREADY" *) output s02_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TDATA" *) input [31:0]s02_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TLAST" *) input s02_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s02_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TREADY" *) output s03_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TDATA" *) input [31:0]s03_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TLAST" *) input s03_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s03_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) output [31:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *) output m00_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TREADY" *) input m01_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TDATA" *) output [31:0]m01_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TLAST" *) output m01_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m01_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TREADY" *) input m02_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TDATA" *) output [31:0]m02_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TLAST" *) output m02_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m02_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TREADY" *) input m03_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TDATA" *) output [31:0]m03_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TLAST" *) output m03_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m03_axis_tvalid;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire link7_err;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [31:0]m01_axis_tdata;
  wire m01_axis_tlast;
  wire m01_axis_tready;
  wire m01_axis_tvalid;
  wire [31:0]m02_axis_tdata;
  wire m02_axis_tlast;
  wire m02_axis_tready;
  wire m02_axis_tvalid;
  wire [31:0]m03_axis_tdata;
  wire m03_axis_tlast;
  wire m03_axis_tready;
  wire m03_axis_tvalid;
  wire rstn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [31:0]s01_axis_tdata;
  wire s01_axis_tlast;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire [31:0]s02_axis_tdata;
  wire s02_axis_tlast;
  wire s02_axis_tready;
  wire s02_axis_tvalid;
  wire [31:0]s03_axis_tdata;
  wire s03_axis_tlast;
  wire s03_axis_tready;
  wire s03_axis_tvalid;

  assign link7[3] = \<const0> ;
  assign link7[2] = \<const1> ;
  assign link7[1] = \<const1> ;
  assign link7[0] = \<const1> ;
  assign link_err[15] = link7_err;
  assign link_err[14] = link7_err;
  assign link_err[13] = link7_err;
  assign link_err[12] = link7_err;
  assign link_err[11] = link7_err;
  assign link_err[10] = link7_err;
  assign link_err[9] = link7_err;
  assign link_err[8] = link7_err;
  assign link_err[7] = link7_err;
  assign link_err[6] = link7_err;
  assign link_err[5] = link7_err;
  assign link_err[4] = link7_err;
  assign link_err[3] = link7_err;
  assign link_err[2] = link7_err;
  assign link_err[1] = link7_err;
  assign link_err[0] = link7_err;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  design_1_total_link_ctrl_0_0_total_link_ctrl inst
       (.clk(clk),
        .m00_axis_tdata(m00_axis_tdata),
        .m00_axis_tlast(m00_axis_tlast),
        .m00_axis_tready(m00_axis_tready),
        .m00_axis_tvalid(m00_axis_tvalid),
        .m01_axis_tdata(m01_axis_tdata),
        .m01_axis_tlast(m01_axis_tlast),
        .m01_axis_tready(m01_axis_tready),
        .m01_axis_tvalid(m01_axis_tvalid),
        .m02_axis_tdata(m02_axis_tdata),
        .m02_axis_tlast(m02_axis_tlast),
        .m02_axis_tready(m02_axis_tready),
        .m02_axis_tvalid(m02_axis_tvalid),
        .m03_axis_tdata(m03_axis_tdata),
        .m03_axis_tlast(m03_axis_tlast),
        .m03_axis_tready(m03_axis_tready),
        .m03_axis_tvalid(m03_axis_tvalid),
        .rstn(rstn),
        .s00_axis_tdata(s00_axis_tdata),
        .s00_axis_tlast(s00_axis_tlast),
        .s00_axis_tready(s00_axis_tready),
        .s00_axis_tvalid(s00_axis_tvalid),
        .s01_axis_tdata(s01_axis_tdata),
        .s01_axis_tlast(s01_axis_tlast),
        .s01_axis_tready(s01_axis_tready),
        .s01_axis_tvalid(s01_axis_tvalid),
        .s02_axis_tdata(s02_axis_tdata),
        .s02_axis_tlast(s02_axis_tlast),
        .s02_axis_tready(s02_axis_tready),
        .s02_axis_tvalid(s02_axis_tvalid),
        .s03_axis_tdata(s03_axis_tdata),
        .s03_axis_tlast(s03_axis_tlast),
        .s03_axis_tready(s03_axis_tready),
        .s03_axis_tvalid(s03_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "total_link_ctrl" *) 
module design_1_total_link_ctrl_0_0_total_link_ctrl
   (s00_axis_tready,
    s01_axis_tready,
    s02_axis_tready,
    s03_axis_tready,
    m00_axis_tdata,
    m00_axis_tlast,
    m00_axis_tvalid,
    m01_axis_tdata,
    m01_axis_tlast,
    m01_axis_tvalid,
    m02_axis_tdata,
    m02_axis_tlast,
    m02_axis_tvalid,
    m03_axis_tdata,
    m03_axis_tlast,
    m03_axis_tvalid,
    m00_axis_tready,
    clk,
    m01_axis_tready,
    m02_axis_tready,
    m03_axis_tready,
    s00_axis_tdata,
    s00_axis_tlast,
    s00_axis_tvalid,
    s01_axis_tdata,
    s01_axis_tlast,
    s01_axis_tvalid,
    s02_axis_tdata,
    s02_axis_tlast,
    s02_axis_tvalid,
    s03_axis_tdata,
    s03_axis_tlast,
    s03_axis_tvalid,
    rstn);
  output s00_axis_tready;
  output s01_axis_tready;
  output s02_axis_tready;
  output s03_axis_tready;
  output [31:0]m00_axis_tdata;
  output m00_axis_tlast;
  output m00_axis_tvalid;
  output [31:0]m01_axis_tdata;
  output m01_axis_tlast;
  output m01_axis_tvalid;
  output [31:0]m02_axis_tdata;
  output m02_axis_tlast;
  output m02_axis_tvalid;
  output [31:0]m03_axis_tdata;
  output m03_axis_tlast;
  output m03_axis_tvalid;
  input m00_axis_tready;
  input clk;
  input m01_axis_tready;
  input m02_axis_tready;
  input m03_axis_tready;
  input [31:0]s00_axis_tdata;
  input s00_axis_tlast;
  input s00_axis_tvalid;
  input [31:0]s01_axis_tdata;
  input s01_axis_tlast;
  input s01_axis_tvalid;
  input [31:0]s02_axis_tdata;
  input s02_axis_tlast;
  input s02_axis_tvalid;
  input [31:0]s03_axis_tdata;
  input s03_axis_tlast;
  input s03_axis_tvalid;
  input rstn;

  wire clk;
  wire [31:0]m00_axis_tdata;
  wire m00_axis_tlast;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [31:0]m01_axis_tdata;
  wire m01_axis_tlast;
  wire m01_axis_tready;
  wire m01_axis_tvalid;
  wire [31:0]m02_axis_tdata;
  wire m02_axis_tlast;
  wire m02_axis_tready;
  wire m02_axis_tvalid;
  wire [31:0]m03_axis_tdata;
  wire m03_axis_tlast;
  wire m03_axis_tready;
  wire m03_axis_tvalid;
  wire p_0_in;
  wire rstn;
  wire [31:0]s00_axis_tdata;
  wire s00_axis_tlast;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [31:0]s01_axis_tdata;
  wire s01_axis_tlast;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire [31:0]s02_axis_tdata;
  wire s02_axis_tlast;
  wire s02_axis_tready;
  wire s02_axis_tvalid;
  wire [31:0]s03_axis_tdata;
  wire s03_axis_tlast;
  wire s03_axis_tready;
  wire s03_axis_tvalid;

  FDRE \m00_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[0]),
        .Q(m00_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[10]),
        .Q(m00_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[11]),
        .Q(m00_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[12]),
        .Q(m00_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[13]),
        .Q(m00_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[14]),
        .Q(m00_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[15]),
        .Q(m00_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[16]),
        .Q(m00_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[17]),
        .Q(m00_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[18]),
        .Q(m00_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[19]),
        .Q(m00_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[1]),
        .Q(m00_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[20]),
        .Q(m00_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[21]),
        .Q(m00_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[22]),
        .Q(m00_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[23]),
        .Q(m00_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[24]),
        .Q(m00_axis_tdata[24]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[25]),
        .Q(m00_axis_tdata[25]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[26]),
        .Q(m00_axis_tdata[26]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[27]),
        .Q(m00_axis_tdata[27]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[28]),
        .Q(m00_axis_tdata[28]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[29]),
        .Q(m00_axis_tdata[29]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[2]),
        .Q(m00_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[30]),
        .Q(m00_axis_tdata[30]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[31]),
        .Q(m00_axis_tdata[31]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[3]),
        .Q(m00_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[4]),
        .Q(m00_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[5]),
        .Q(m00_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[6]),
        .Q(m00_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[7]),
        .Q(m00_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[8]),
        .Q(m00_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m00_axis_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tdata[9]),
        .Q(m00_axis_tdata[9]),
        .R(p_0_in));
  FDRE m00_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tlast),
        .Q(m00_axis_tlast),
        .R(p_0_in));
  FDRE m00_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s00_axis_tvalid),
        .Q(m00_axis_tvalid),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[0]),
        .Q(m01_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[10]),
        .Q(m01_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[11]),
        .Q(m01_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[12]),
        .Q(m01_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[13]),
        .Q(m01_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[14]),
        .Q(m01_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[15]),
        .Q(m01_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[16]),
        .Q(m01_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[17]),
        .Q(m01_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[18]),
        .Q(m01_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[19]),
        .Q(m01_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[1]),
        .Q(m01_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[20]),
        .Q(m01_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[21]),
        .Q(m01_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[22]),
        .Q(m01_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[23]),
        .Q(m01_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[24]),
        .Q(m01_axis_tdata[24]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[25]),
        .Q(m01_axis_tdata[25]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[26]),
        .Q(m01_axis_tdata[26]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[27]),
        .Q(m01_axis_tdata[27]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[28]),
        .Q(m01_axis_tdata[28]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[29]),
        .Q(m01_axis_tdata[29]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[2]),
        .Q(m01_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[30]),
        .Q(m01_axis_tdata[30]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[31]),
        .Q(m01_axis_tdata[31]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[3]),
        .Q(m01_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[4]),
        .Q(m01_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[5]),
        .Q(m01_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[6]),
        .Q(m01_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[7]),
        .Q(m01_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[8]),
        .Q(m01_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m01_axis_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tdata[9]),
        .Q(m01_axis_tdata[9]),
        .R(p_0_in));
  FDRE m01_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tlast),
        .Q(m01_axis_tlast),
        .R(p_0_in));
  FDRE m01_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s01_axis_tvalid),
        .Q(m01_axis_tvalid),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[0]),
        .Q(m02_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[10]),
        .Q(m02_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[11]),
        .Q(m02_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[12]),
        .Q(m02_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[13]),
        .Q(m02_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[14]),
        .Q(m02_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[15]),
        .Q(m02_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[16]),
        .Q(m02_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[17]),
        .Q(m02_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[18]),
        .Q(m02_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[19]),
        .Q(m02_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[1]),
        .Q(m02_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[20]),
        .Q(m02_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[21]),
        .Q(m02_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[22]),
        .Q(m02_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[23]),
        .Q(m02_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[24]),
        .Q(m02_axis_tdata[24]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[25]),
        .Q(m02_axis_tdata[25]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[26]),
        .Q(m02_axis_tdata[26]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[27]),
        .Q(m02_axis_tdata[27]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[28]),
        .Q(m02_axis_tdata[28]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[29]),
        .Q(m02_axis_tdata[29]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[2]),
        .Q(m02_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[30]),
        .Q(m02_axis_tdata[30]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[31]),
        .Q(m02_axis_tdata[31]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[3]),
        .Q(m02_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[4]),
        .Q(m02_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[5]),
        .Q(m02_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[6]),
        .Q(m02_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[7]),
        .Q(m02_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[8]),
        .Q(m02_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m02_axis_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tdata[9]),
        .Q(m02_axis_tdata[9]),
        .R(p_0_in));
  FDRE m02_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tlast),
        .Q(m02_axis_tlast),
        .R(p_0_in));
  FDRE m02_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s02_axis_tvalid),
        .Q(m02_axis_tvalid),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[0]),
        .Q(m03_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[10]),
        .Q(m03_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[11]),
        .Q(m03_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[12]),
        .Q(m03_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[13]),
        .Q(m03_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[14]),
        .Q(m03_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[15]),
        .Q(m03_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[16]),
        .Q(m03_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[17]),
        .Q(m03_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[18]),
        .Q(m03_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[19]),
        .Q(m03_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[1]),
        .Q(m03_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[20]),
        .Q(m03_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[21]),
        .Q(m03_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[22]),
        .Q(m03_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[23]),
        .Q(m03_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[24]),
        .Q(m03_axis_tdata[24]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[25]),
        .Q(m03_axis_tdata[25]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[26]),
        .Q(m03_axis_tdata[26]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[27]),
        .Q(m03_axis_tdata[27]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[28]),
        .Q(m03_axis_tdata[28]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[29]),
        .Q(m03_axis_tdata[29]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[2]),
        .Q(m03_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[30]),
        .Q(m03_axis_tdata[30]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[31]),
        .Q(m03_axis_tdata[31]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[3]),
        .Q(m03_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[4]),
        .Q(m03_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[5]),
        .Q(m03_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[6]),
        .Q(m03_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[7]),
        .Q(m03_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[8]),
        .Q(m03_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m03_axis_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tdata[9]),
        .Q(m03_axis_tdata[9]),
        .R(p_0_in));
  FDRE m03_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tlast),
        .Q(m03_axis_tlast),
        .R(p_0_in));
  FDRE m03_axis_tvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s03_axis_tvalid),
        .Q(m03_axis_tvalid),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    s00_axis_tready_i_1
       (.I0(rstn),
        .O(p_0_in));
  FDRE s00_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(m00_axis_tready),
        .Q(s00_axis_tready),
        .R(p_0_in));
  FDRE s01_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(m01_axis_tready),
        .Q(s01_axis_tready),
        .R(p_0_in));
  FDRE s02_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(m02_axis_tready),
        .Q(s02_axis_tready),
        .R(p_0_in));
  FDRE s03_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(m03_axis_tready),
        .Q(s03_axis_tready),
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
