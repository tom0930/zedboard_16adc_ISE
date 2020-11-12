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
(* CORE_GENERATION_INFO = "design_1_total_link_ctrl_0_0,total_link_ctrl,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=total_link_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,idel=0000,len_check=0001,wd_data=0010,loop=0011}" *)
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
  ctrl_index_0,
  ctrl_index_1,
  ctrl_index_2,
  ctrl_index_3,
  we_index,
  we_result,
  data_in_index_0,
  en_index_0,
  addr_index_0,
  data_in_index_1,
  en_index_1,
  addr_index_1,
  data_in_index_2,
  en_index_2,
  addr_index_2,
  data_in_index_3,
  en_index_3,
  addr_index_3,
  data_out_result_0,
  en_result_0,
  addr_result_0,
  data_out_result_1,
  en_result_1,
  addr_result_1,
  data_out_result_2,
  en_result_2,
  addr_result_2,
  data_out_result_3,
  en_result_3,
  addr_result_3
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
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
input wire ctrl_index_0;
input wire ctrl_index_1;
input wire ctrl_index_2;
input wire ctrl_index_3;
output wire [3 : 0] we_index;
output wire [3 : 0] we_result;
input wire [31 : 0] data_in_index_0;
output wire en_index_0;
output wire [31 : 0] addr_index_0;
input wire [31 : 0] data_in_index_1;
output wire en_index_1;
output wire [31 : 0] addr_index_1;
input wire [31 : 0] data_in_index_2;
output wire en_index_2;
output wire [31 : 0] addr_index_2;
input wire [31 : 0] data_in_index_3;
output wire en_index_3;
output wire [31 : 0] addr_index_3;
output wire [31 : 0] data_out_result_0;
output wire en_result_0;
output wire [31 : 0] addr_result_0;
output wire [31 : 0] data_out_result_1;
output wire en_result_1;
output wire [31 : 0] addr_result_1;
output wire [31 : 0] data_out_result_2;
output wire en_result_2;
output wire [31 : 0] addr_result_2;
output wire [31 : 0] data_out_result_3;
output wire en_result_3;
output wire [31 : 0] addr_result_3;

  total_link_ctrl #(
    .idel(4'B0000),
    .len_check(4'B0001),
    .wd_data(4'B0010),
    .loop(4'B0011)
  ) inst (
    .clk(clk),
    .rstn(rstn),
    .link7_err(link7_err),
    .link7_channel(link7_channel),
    .link7_data(link7_data),
    .link7(link7),
    .link_err(link_err),
    .ctrl_index_0(ctrl_index_0),
    .ctrl_index_1(ctrl_index_1),
    .ctrl_index_2(ctrl_index_2),
    .ctrl_index_3(ctrl_index_3),
    .we_index(we_index),
    .we_result(we_result),
    .data_in_index_0(data_in_index_0),
    .en_index_0(en_index_0),
    .addr_index_0(addr_index_0),
    .data_in_index_1(data_in_index_1),
    .en_index_1(en_index_1),
    .addr_index_1(addr_index_1),
    .data_in_index_2(data_in_index_2),
    .en_index_2(en_index_2),
    .addr_index_2(addr_index_2),
    .data_in_index_3(data_in_index_3),
    .en_index_3(en_index_3),
    .addr_index_3(addr_index_3),
    .data_out_result_0(data_out_result_0),
    .en_result_0(en_result_0),
    .addr_result_0(addr_result_0),
    .data_out_result_1(data_out_result_1),
    .en_result_1(en_result_1),
    .addr_result_1(addr_result_1),
    .data_out_result_2(data_out_result_2),
    .en_result_2(en_result_2),
    .addr_result_2(addr_result_2),
    .data_out_result_3(data_out_result_3),
    .en_result_3(en_result_3),
    .addr_result_3(addr_result_3)
  );
endmodule
