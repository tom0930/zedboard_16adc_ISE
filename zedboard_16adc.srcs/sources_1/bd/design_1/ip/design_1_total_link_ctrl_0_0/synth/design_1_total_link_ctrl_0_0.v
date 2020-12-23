// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:total_link_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "total_link_ctrl,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "design_1_total_link_ctrl_0_0,total_link_ctrl,{}" *)
(* CORE_GENERATION_INFO = "design_1_total_link_ctrl_0_0,total_link_ctrl,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=total_link_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_total_link_ctrl_0_0 (
  clk,
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
  m03_axis_tvalid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:m01_axis:m02_axis:m03_axis:s00_axis:s01_axis:s02_axis:s03_axis, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
input wire link7_err;
input wire [4 : 0] link7_channel;
input wire [95 : 0] link7_data;
output wire [3 : 0] link7;
output wire [15 : 0] link_err;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *)
output wire s00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *)
input wire [31 : 0] s00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *)
input wire s00_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *)
input wire s00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TREADY" *)
output wire s01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TDATA" *)
input wire [31 : 0] s01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TLAST" *)
input wire s01_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TVALID" *)
input wire s01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TREADY" *)
output wire s02_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TDATA" *)
input wire [31 : 0] s02_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TLAST" *)
input wire s02_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TVALID" *)
input wire s02_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TREADY" *)
output wire s03_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TDATA" *)
input wire [31 : 0] s03_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TLAST" *)
input wire s03_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TVALID" *)
input wire s03_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *)
input wire m00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *)
output wire [31 : 0] m00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *)
output wire m00_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *)
output wire m00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TREADY" *)
input wire m01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TDATA" *)
output wire [31 : 0] m01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TLAST" *)
output wire m01_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TVALID" *)
output wire m01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TREADY" *)
input wire m02_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TDATA" *)
output wire [31 : 0] m02_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TLAST" *)
output wire m02_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TVALID" *)
output wire m02_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TREADY" *)
input wire m03_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TDATA" *)
output wire [31 : 0] m03_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TLAST" *)
output wire m03_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TVALID" *)
output wire m03_axis_tvalid;

  total_link_ctrl inst (
    .clk(clk),
    .rstn(rstn),
    .link7_err(link7_err),
    .link7_channel(link7_channel),
    .link7_data(link7_data),
    .link7(link7),
    .link_err(link_err),
    .s00_axis_tready(s00_axis_tready),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tlast(s00_axis_tlast),
    .s00_axis_tvalid(s00_axis_tvalid),
    .s01_axis_tready(s01_axis_tready),
    .s01_axis_tdata(s01_axis_tdata),
    .s01_axis_tlast(s01_axis_tlast),
    .s01_axis_tvalid(s01_axis_tvalid),
    .s02_axis_tready(s02_axis_tready),
    .s02_axis_tdata(s02_axis_tdata),
    .s02_axis_tlast(s02_axis_tlast),
    .s02_axis_tvalid(s02_axis_tvalid),
    .s03_axis_tready(s03_axis_tready),
    .s03_axis_tdata(s03_axis_tdata),
    .s03_axis_tlast(s03_axis_tlast),
    .s03_axis_tvalid(s03_axis_tvalid),
    .m00_axis_tready(m00_axis_tready),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tlast(m00_axis_tlast),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m01_axis_tready(m01_axis_tready),
    .m01_axis_tdata(m01_axis_tdata),
    .m01_axis_tlast(m01_axis_tlast),
    .m01_axis_tvalid(m01_axis_tvalid),
    .m02_axis_tready(m02_axis_tready),
    .m02_axis_tdata(m02_axis_tdata),
    .m02_axis_tlast(m02_axis_tlast),
    .m02_axis_tvalid(m02_axis_tvalid),
    .m03_axis_tready(m03_axis_tready),
    .m03_axis_tdata(m03_axis_tdata),
    .m03_axis_tlast(m03_axis_tlast),
    .m03_axis_tvalid(m03_axis_tvalid)
  );
endmodule
