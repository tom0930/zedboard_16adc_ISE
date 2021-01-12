// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
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


// IP VLNV: xilinx.com:module_ref:bram_rd:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_bram_rd_0_0 (
  clk,
  rstn,
  s_axis_tready,
  s_axis_tdata,
  s_axis_tlast,
  s_axis_tvalid,
  m_axis_tready,
  m_axis_tdata,
  m_axis_tlast,
  m_axis_tvalid,
  addr0a,
  data0a,
  addr1a,
  data1a,
  addr2a,
  data2a,
  addr3a,
  data3a,
  addr4a,
  data4a,
  addr5a,
  data5a,
  addr6a,
  data6a,
  addr7a,
  data7a,
  addr8a,
  data8a,
  addr9a,
  data9a,
  addr10a,
  data10a,
  addr11a,
  data11a,
  addr12a,
  data12a,
  addr13a,
  data13a,
  addr14a,
  data14a,
  addr15a,
  data15a,
  addr0b,
  data0b,
  addr1b,
  data1b,
  addr2b,
  data2b,
  addr3b,
  data3b,
  addr4b,
  data4b,
  addr5b,
  data5b,
  addr6b,
  data6b,
  addr7b,
  data7b,
  addr8b,
  data8b,
  addr9b,
  data9b,
  addr10b,
  data10b,
  addr11b,
  data11b,
  addr12b,
  data12b,
  addr13b,
  data13b,
  addr14b,
  data14b,
  addr15b,
  data15b
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *)
input wire rstn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *)
output wire s_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *)
input wire [31 : 0] s_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *)
input wire s_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *)
input wire s_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *)
input wire m_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [31 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
output wire [10 : 0] addr0a;
input wire [31 : 0] data0a;
output wire [10 : 0] addr1a;
input wire [31 : 0] data1a;
output wire [10 : 0] addr2a;
input wire [31 : 0] data2a;
output wire [10 : 0] addr3a;
input wire [31 : 0] data3a;
output wire [10 : 0] addr4a;
input wire [31 : 0] data4a;
output wire [10 : 0] addr5a;
input wire [31 : 0] data5a;
output wire [10 : 0] addr6a;
input wire [31 : 0] data6a;
output wire [10 : 0] addr7a;
input wire [31 : 0] data7a;
output wire [10 : 0] addr8a;
input wire [31 : 0] data8a;
output wire [10 : 0] addr9a;
input wire [31 : 0] data9a;
output wire [10 : 0] addr10a;
input wire [31 : 0] data10a;
output wire [10 : 0] addr11a;
input wire [31 : 0] data11a;
output wire [10 : 0] addr12a;
input wire [31 : 0] data12a;
output wire [10 : 0] addr13a;
input wire [31 : 0] data13a;
output wire [10 : 0] addr14a;
input wire [31 : 0] data14a;
output wire [10 : 0] addr15a;
input wire [31 : 0] data15a;
output wire [10 : 0] addr0b;
input wire [31 : 0] data0b;
output wire [10 : 0] addr1b;
input wire [31 : 0] data1b;
output wire [10 : 0] addr2b;
input wire [31 : 0] data2b;
output wire [10 : 0] addr3b;
input wire [31 : 0] data3b;
output wire [10 : 0] addr4b;
input wire [31 : 0] data4b;
output wire [10 : 0] addr5b;
input wire [31 : 0] data5b;
output wire [10 : 0] addr6b;
input wire [31 : 0] data6b;
output wire [10 : 0] addr7b;
input wire [31 : 0] data7b;
output wire [10 : 0] addr8b;
input wire [31 : 0] data8b;
output wire [10 : 0] addr9b;
input wire [31 : 0] data9b;
output wire [10 : 0] addr10b;
input wire [31 : 0] data10b;
output wire [10 : 0] addr11b;
input wire [31 : 0] data11b;
output wire [10 : 0] addr12b;
input wire [31 : 0] data12b;
output wire [10 : 0] addr13b;
input wire [31 : 0] data13b;
output wire [10 : 0] addr14b;
input wire [31 : 0] data14b;
output wire [10 : 0] addr15b;
input wire [31 : 0] data15b;

  bram_rd inst (
    .clk(clk),
    .rstn(rstn),
    .s_axis_tready(s_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tlast(s_axis_tlast),
    .s_axis_tvalid(s_axis_tvalid),
    .m_axis_tready(m_axis_tready),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tvalid(m_axis_tvalid),
    .addr0a(addr0a),
    .data0a(data0a),
    .addr1a(addr1a),
    .data1a(data1a),
    .addr2a(addr2a),
    .data2a(data2a),
    .addr3a(addr3a),
    .data3a(data3a),
    .addr4a(addr4a),
    .data4a(data4a),
    .addr5a(addr5a),
    .data5a(data5a),
    .addr6a(addr6a),
    .data6a(data6a),
    .addr7a(addr7a),
    .data7a(data7a),
    .addr8a(addr8a),
    .data8a(data8a),
    .addr9a(addr9a),
    .data9a(data9a),
    .addr10a(addr10a),
    .data10a(data10a),
    .addr11a(addr11a),
    .data11a(data11a),
    .addr12a(addr12a),
    .data12a(data12a),
    .addr13a(addr13a),
    .data13a(data13a),
    .addr14a(addr14a),
    .data14a(data14a),
    .addr15a(addr15a),
    .data15a(data15a),
    .addr0b(addr0b),
    .data0b(data0b),
    .addr1b(addr1b),
    .data1b(data1b),
    .addr2b(addr2b),
    .data2b(data2b),
    .addr3b(addr3b),
    .data3b(data3b),
    .addr4b(addr4b),
    .data4b(data4b),
    .addr5b(addr5b),
    .data5b(data5b),
    .addr6b(addr6b),
    .data6b(data6b),
    .addr7b(addr7b),
    .data7b(data7b),
    .addr8b(addr8b),
    .data8b(data8b),
    .addr9b(addr9b),
    .data9b(data9b),
    .addr10b(addr10b),
    .data10b(data10b),
    .addr11b(addr11b),
    .data11b(data11b),
    .addr12b(addr12b),
    .data12b(data12b),
    .addr13b(addr13b),
    .data13b(data13b),
    .addr14b(addr14b),
    .data14b(data14b),
    .addr15b(addr15b),
    .data15b(data15b)
  );
endmodule
