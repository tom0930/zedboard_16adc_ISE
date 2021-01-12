// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan  7 14:11:00 2021
// Host        : DESKTOP-CUAMMK2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/project/zedboard_16adc/zedboard_16adc_0104/zedboard_16adc_16/zedboard_16adc.srcs/sources_1/bd/design_1/ip/design_1_bram_rd_0_0/design_1_bram_rd_0_0_sim_netlist.v
// Design      : design_1_bram_rd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_bram_rd_0_0,bram_rd,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "bram_rd,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_bram_rd_0_0
   (clk,
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
    data15b);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET rstn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rstn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rstn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  output [10:0]addr0a;
  input [31:0]data0a;
  output [10:0]addr1a;
  input [31:0]data1a;
  output [10:0]addr2a;
  input [31:0]data2a;
  output [10:0]addr3a;
  input [31:0]data3a;
  output [10:0]addr4a;
  input [31:0]data4a;
  output [10:0]addr5a;
  input [31:0]data5a;
  output [10:0]addr6a;
  input [31:0]data6a;
  output [10:0]addr7a;
  input [31:0]data7a;
  output [10:0]addr8a;
  input [31:0]data8a;
  output [10:0]addr9a;
  input [31:0]data9a;
  output [10:0]addr10a;
  input [31:0]data10a;
  output [10:0]addr11a;
  input [31:0]data11a;
  output [10:0]addr12a;
  input [31:0]data12a;
  output [10:0]addr13a;
  input [31:0]data13a;
  output [10:0]addr14a;
  input [31:0]data14a;
  output [10:0]addr15a;
  input [31:0]data15a;
  output [10:0]addr0b;
  input [31:0]data0b;
  output [10:0]addr1b;
  input [31:0]data1b;
  output [10:0]addr2b;
  input [31:0]data2b;
  output [10:0]addr3b;
  input [31:0]data3b;
  output [10:0]addr4b;
  input [31:0]data4b;
  output [10:0]addr5b;
  input [31:0]data5b;
  output [10:0]addr6b;
  input [31:0]data6b;
  output [10:0]addr7b;
  input [31:0]data7b;
  output [10:0]addr8b;
  input [31:0]data8b;
  output [10:0]addr9b;
  input [31:0]data9b;
  output [10:0]addr10b;
  input [31:0]data10b;
  output [10:0]addr11b;
  input [31:0]data11b;
  output [10:0]addr12b;
  input [31:0]data12b;
  output [10:0]addr13b;
  input [31:0]data13b;
  output [10:0]addr14b;
  input [31:0]data14b;
  output [10:0]addr15b;
  input [31:0]data15b;

  wire [10:0]addr0a;
  wire [10:0]addr0b;
  wire [10:0]addr10a;
  wire [10:0]addr10b;
  wire [10:0]addr11a;
  wire [10:0]addr11b;
  wire [10:0]addr12a;
  wire [10:0]addr12b;
  wire [10:0]addr13a;
  wire [10:0]addr13b;
  wire [10:0]addr14a;
  wire [10:0]addr14b;
  wire [10:0]addr15a;
  wire [10:0]addr15b;
  wire [10:0]addr1a;
  wire [10:0]addr1b;
  wire [10:0]addr2a;
  wire [10:0]addr2b;
  wire [10:0]addr3a;
  wire [10:0]addr3b;
  wire [10:0]addr4a;
  wire [10:0]addr4b;
  wire [10:0]addr5a;
  wire [10:0]addr5b;
  wire [10:0]addr6a;
  wire [10:0]addr6b;
  wire [10:0]addr7a;
  wire [10:0]addr7b;
  wire [10:0]addr8a;
  wire [10:0]addr8b;
  wire [10:0]addr9a;
  wire [10:0]addr9b;
  wire clk;
  wire [31:0]data0a;
  wire [31:0]data0b;
  wire [31:0]data10a;
  wire [31:0]data10b;
  wire [31:0]data11a;
  wire [31:0]data11b;
  wire [31:0]data12a;
  wire [31:0]data12b;
  wire [31:0]data13a;
  wire [31:0]data13b;
  wire [31:0]data14a;
  wire [31:0]data14b;
  wire [31:0]data15a;
  wire [31:0]data15b;
  wire [31:0]data1a;
  wire [31:0]data1b;
  wire [31:0]data2a;
  wire [31:0]data2b;
  wire [31:0]data3a;
  wire [31:0]data3b;
  wire [31:0]data4a;
  wire [31:0]data4b;
  wire [31:0]data5a;
  wire [31:0]data5b;
  wire [31:0]data6a;
  wire [31:0]data6b;
  wire [31:0]data7a;
  wire [31:0]data7b;
  wire [31:0]data8a;
  wire [31:0]data8b;
  wire [31:0]data9a;
  wire [31:0]data9b;
  wire [31:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire rstn;
  wire [31:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_axis_tlast = m_axis_tvalid;
  design_1_bram_rd_0_0_bram_rd inst
       (.addr0a(addr0a),
        .addr0b(addr0b),
        .addr10a(addr10a),
        .addr10b(addr10b),
        .addr11a(addr11a),
        .addr11b(addr11b),
        .addr12a(addr12a),
        .addr12b(addr12b),
        .addr13a(addr13a),
        .addr13b(addr13b),
        .addr14a(addr14a),
        .addr14b(addr14b),
        .addr15a(addr15a),
        .addr15b(addr15b),
        .addr1a(addr1a),
        .addr1b(addr1b),
        .addr2a(addr2a),
        .addr2b(addr2b),
        .addr3a(addr3a),
        .addr3b(addr3b),
        .addr4a(addr4a),
        .addr4b(addr4b),
        .addr5a(addr5a),
        .addr5b(addr5b),
        .addr6a(addr6a),
        .addr6b(addr6b),
        .addr7a(addr7a),
        .addr7b(addr7b),
        .addr8a(addr8a),
        .addr8b(addr8b),
        .addr9a(addr9a),
        .addr9b(addr9b),
        .clk(clk),
        .data0a(data0a),
        .data0b(data0b),
        .data10a(data10a),
        .data10b(data10b),
        .data11a(data11a),
        .data11b(data11b),
        .data12a(data12a),
        .data12b(data12b),
        .data13a(data13a),
        .data13b(data13b),
        .data14a(data14a),
        .data14b(data14b),
        .data15a(data15a),
        .data15b(data15b),
        .data1a(data1a),
        .data1b(data1b),
        .data2a(data2a),
        .data2b(data2b),
        .data3a(data3a),
        .data3b(data3b),
        .data4a(data4a),
        .data4b(data4b),
        .data5a(data5a),
        .data5b(data5b),
        .data6a(data6a),
        .data6b(data6b),
        .data7a(data7a),
        .data7b(data7b),
        .data8a(data8a),
        .data8b(data8b),
        .data9a(data9a),
        .data9b(data9b),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .rstn(rstn),
        .s_axis_tdata({s_axis_tdata[27:16],s_axis_tdata[11:0]}),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "bram_rd" *) 
module design_1_bram_rd_0_0_bram_rd
   (m_axis_tdata,
    addr0a,
    addr1a,
    addr2a,
    addr3a,
    addr4a,
    addr5a,
    addr6a,
    addr7a,
    addr8a,
    addr9a,
    addr10a,
    addr11a,
    addr12a,
    addr13a,
    addr14a,
    addr15a,
    addr0b,
    addr1b,
    addr2b,
    addr3b,
    addr4b,
    addr5b,
    addr6b,
    addr7b,
    addr8b,
    addr9b,
    addr10b,
    addr11b,
    addr12b,
    addr13b,
    addr14b,
    addr15b,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    clk,
    s_axis_tvalid,
    s_axis_tdata,
    data1a,
    data0a,
    data3a,
    data2a,
    data5a,
    data4a,
    data7a,
    data6a,
    data9a,
    data8a,
    data11a,
    data10a,
    data13a,
    data12a,
    data15a,
    data14a,
    data1b,
    data0b,
    data3b,
    data2b,
    data5b,
    data4b,
    data7b,
    data6b,
    data9b,
    data8b,
    data11b,
    data10b,
    data13b,
    data12b,
    data15b,
    data14b,
    rstn);
  output [31:0]m_axis_tdata;
  output [10:0]addr0a;
  output [10:0]addr1a;
  output [10:0]addr2a;
  output [10:0]addr3a;
  output [10:0]addr4a;
  output [10:0]addr5a;
  output [10:0]addr6a;
  output [10:0]addr7a;
  output [10:0]addr8a;
  output [10:0]addr9a;
  output [10:0]addr10a;
  output [10:0]addr11a;
  output [10:0]addr12a;
  output [10:0]addr13a;
  output [10:0]addr14a;
  output [10:0]addr15a;
  output [10:0]addr0b;
  output [10:0]addr1b;
  output [10:0]addr2b;
  output [10:0]addr3b;
  output [10:0]addr4b;
  output [10:0]addr5b;
  output [10:0]addr6b;
  output [10:0]addr7b;
  output [10:0]addr8b;
  output [10:0]addr9b;
  output [10:0]addr10b;
  output [10:0]addr11b;
  output [10:0]addr12b;
  output [10:0]addr13b;
  output [10:0]addr14b;
  output [10:0]addr15b;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input clk;
  input s_axis_tvalid;
  input [23:0]s_axis_tdata;
  input [31:0]data1a;
  input [31:0]data0a;
  input [31:0]data3a;
  input [31:0]data2a;
  input [31:0]data5a;
  input [31:0]data4a;
  input [31:0]data7a;
  input [31:0]data6a;
  input [31:0]data9a;
  input [31:0]data8a;
  input [31:0]data11a;
  input [31:0]data10a;
  input [31:0]data13a;
  input [31:0]data12a;
  input [31:0]data15a;
  input [31:0]data14a;
  input [31:0]data1b;
  input [31:0]data0b;
  input [31:0]data3b;
  input [31:0]data2b;
  input [31:0]data5b;
  input [31:0]data4b;
  input [31:0]data7b;
  input [31:0]data6b;
  input [31:0]data9b;
  input [31:0]data8b;
  input [31:0]data11b;
  input [31:0]data10b;
  input [31:0]data13b;
  input [31:0]data12b;
  input [31:0]data15b;
  input [31:0]data14b;
  input rstn;

  wire [10:0]addr0a;
  wire \addr0a[10]_i_1_n_0 ;
  wire [10:0]addr0b;
  wire \addr0b[10]_i_1_n_0 ;
  wire [10:0]addr10a;
  wire \addr10a[10]_i_1_n_0 ;
  wire [10:0]addr10b;
  wire \addr10b[10]_i_1_n_0 ;
  wire [10:0]addr11a;
  wire \addr11a[10]_i_1_n_0 ;
  wire [10:0]addr11b;
  wire \addr11b[10]_i_1_n_0 ;
  wire [10:0]addr12a;
  wire \addr12a[10]_i_1_n_0 ;
  wire [10:0]addr12b;
  wire \addr12b[10]_i_1_n_0 ;
  wire [10:0]addr13a;
  wire \addr13a[10]_i_1_n_0 ;
  wire [10:0]addr13b;
  wire \addr13b[10]_i_1_n_0 ;
  wire [10:0]addr14a;
  wire \addr14a[10]_i_1_n_0 ;
  wire [10:0]addr14b;
  wire \addr14b[10]_i_1_n_0 ;
  wire [10:0]addr15a;
  wire \addr15a[10]_i_1_n_0 ;
  wire [10:0]addr15b;
  wire \addr15b[10]_i_1_n_0 ;
  wire [10:0]addr1a;
  wire \addr1a[10]_i_1_n_0 ;
  wire [10:0]addr1b;
  wire \addr1b[10]_i_1_n_0 ;
  wire [10:0]addr2a;
  wire \addr2a[10]_i_1_n_0 ;
  wire [10:0]addr2b;
  wire \addr2b[10]_i_1_n_0 ;
  wire [10:0]addr3a;
  wire \addr3a[10]_i_1_n_0 ;
  wire [10:0]addr3b;
  wire \addr3b[10]_i_1_n_0 ;
  wire [10:0]addr4a;
  wire \addr4a[10]_i_1_n_0 ;
  wire [10:0]addr4b;
  wire \addr4b[10]_i_1_n_0 ;
  wire [10:0]addr5a;
  wire \addr5a[10]_i_1_n_0 ;
  wire [10:0]addr5b;
  wire \addr5b[10]_i_1_n_0 ;
  wire [10:0]addr6a;
  wire \addr6a[10]_i_1_n_0 ;
  wire [10:0]addr6b;
  wire \addr6b[10]_i_1_n_0 ;
  wire [10:0]addr7a;
  wire \addr7a[10]_i_1_n_0 ;
  wire [10:0]addr7b;
  wire \addr7b[10]_i_1_n_0 ;
  wire [10:0]addr8a;
  wire \addr8a[10]_i_1_n_0 ;
  wire [10:0]addr8b;
  wire \addr8b[10]_i_1_n_0 ;
  wire [10:0]addr9a;
  wire \addr9a[10]_i_1_n_0 ;
  wire [10:0]addr9b;
  wire \addr9b[10]_i_1_n_0 ;
  wire clk;
  wire [31:0]data0a;
  wire [31:0]data0b;
  wire [31:0]data10a;
  wire [31:0]data10b;
  wire [31:0]data11a;
  wire [31:0]data11b;
  wire [31:0]data12a;
  wire [31:0]data12b;
  wire [31:0]data13a;
  wire [31:0]data13b;
  wire [31:0]data14a;
  wire [31:0]data14b;
  wire [31:0]data15a;
  wire [31:0]data15b;
  wire [31:0]data1a;
  wire [31:0]data1b;
  wire [31:0]data2a;
  wire [31:0]data2b;
  wire [31:0]data3a;
  wire [31:0]data3b;
  wire [31:0]data4a;
  wire [31:0]data4b;
  wire [31:0]data5a;
  wire [31:0]data5b;
  wire [31:0]data6a;
  wire [31:0]data6b;
  wire [31:0]data7a;
  wire [31:0]data7b;
  wire [31:0]data8a;
  wire [31:0]data8b;
  wire [31:0]data9a;
  wire [31:0]data9b;
  wire [31:0]m_axis_tdata;
  wire m_axis_tlast_i_1_n_0;
  wire m_axis_tready;
  wire m_axis_tready_bf;
  wire m_axis_tvalid;
  wire p_0_in;
  wire [31:0]p_1_in;
  wire [15:0]rd_data0;
  wire \rd_data0[0]_i_10_n_0 ;
  wire \rd_data0[0]_i_11_n_0 ;
  wire \rd_data0[0]_i_12_n_0 ;
  wire \rd_data0[0]_i_13_n_0 ;
  wire \rd_data0[0]_i_6_n_0 ;
  wire \rd_data0[0]_i_7_n_0 ;
  wire \rd_data0[0]_i_8_n_0 ;
  wire \rd_data0[0]_i_9_n_0 ;
  wire \rd_data0[10]_i_10_n_0 ;
  wire \rd_data0[10]_i_11_n_0 ;
  wire \rd_data0[10]_i_12_n_0 ;
  wire \rd_data0[10]_i_13_n_0 ;
  wire \rd_data0[10]_i_6_n_0 ;
  wire \rd_data0[10]_i_7_n_0 ;
  wire \rd_data0[10]_i_8_n_0 ;
  wire \rd_data0[10]_i_9_n_0 ;
  wire \rd_data0[11]_i_10_n_0 ;
  wire \rd_data0[11]_i_11_n_0 ;
  wire \rd_data0[11]_i_12_n_0 ;
  wire \rd_data0[11]_i_13_n_0 ;
  wire \rd_data0[11]_i_6_n_0 ;
  wire \rd_data0[11]_i_7_n_0 ;
  wire \rd_data0[11]_i_8_n_0 ;
  wire \rd_data0[11]_i_9_n_0 ;
  wire \rd_data0[12]_i_10_n_0 ;
  wire \rd_data0[12]_i_11_n_0 ;
  wire \rd_data0[12]_i_12_n_0 ;
  wire \rd_data0[12]_i_13_n_0 ;
  wire \rd_data0[12]_i_6_n_0 ;
  wire \rd_data0[12]_i_7_n_0 ;
  wire \rd_data0[12]_i_8_n_0 ;
  wire \rd_data0[12]_i_9_n_0 ;
  wire \rd_data0[13]_i_10_n_0 ;
  wire \rd_data0[13]_i_11_n_0 ;
  wire \rd_data0[13]_i_12_n_0 ;
  wire \rd_data0[13]_i_13_n_0 ;
  wire \rd_data0[13]_i_6_n_0 ;
  wire \rd_data0[13]_i_7_n_0 ;
  wire \rd_data0[13]_i_8_n_0 ;
  wire \rd_data0[13]_i_9_n_0 ;
  wire \rd_data0[14]_i_10_n_0 ;
  wire \rd_data0[14]_i_11_n_0 ;
  wire \rd_data0[14]_i_12_n_0 ;
  wire \rd_data0[14]_i_13_n_0 ;
  wire \rd_data0[14]_i_6_n_0 ;
  wire \rd_data0[14]_i_7_n_0 ;
  wire \rd_data0[14]_i_8_n_0 ;
  wire \rd_data0[14]_i_9_n_0 ;
  wire \rd_data0[15]_i_10_n_0 ;
  wire \rd_data0[15]_i_11_n_0 ;
  wire \rd_data0[15]_i_12_n_0 ;
  wire \rd_data0[15]_i_13_n_0 ;
  wire \rd_data0[15]_i_6_n_0 ;
  wire \rd_data0[15]_i_7_n_0 ;
  wire \rd_data0[15]_i_8_n_0 ;
  wire \rd_data0[15]_i_9_n_0 ;
  wire \rd_data0[1]_i_10_n_0 ;
  wire \rd_data0[1]_i_11_n_0 ;
  wire \rd_data0[1]_i_12_n_0 ;
  wire \rd_data0[1]_i_13_n_0 ;
  wire \rd_data0[1]_i_6_n_0 ;
  wire \rd_data0[1]_i_7_n_0 ;
  wire \rd_data0[1]_i_8_n_0 ;
  wire \rd_data0[1]_i_9_n_0 ;
  wire \rd_data0[2]_i_10_n_0 ;
  wire \rd_data0[2]_i_11_n_0 ;
  wire \rd_data0[2]_i_12_n_0 ;
  wire \rd_data0[2]_i_13_n_0 ;
  wire \rd_data0[2]_i_6_n_0 ;
  wire \rd_data0[2]_i_7_n_0 ;
  wire \rd_data0[2]_i_8_n_0 ;
  wire \rd_data0[2]_i_9_n_0 ;
  wire \rd_data0[3]_i_10_n_0 ;
  wire \rd_data0[3]_i_11_n_0 ;
  wire \rd_data0[3]_i_12_n_0 ;
  wire \rd_data0[3]_i_13_n_0 ;
  wire \rd_data0[3]_i_6_n_0 ;
  wire \rd_data0[3]_i_7_n_0 ;
  wire \rd_data0[3]_i_8_n_0 ;
  wire \rd_data0[3]_i_9_n_0 ;
  wire \rd_data0[4]_i_10_n_0 ;
  wire \rd_data0[4]_i_11_n_0 ;
  wire \rd_data0[4]_i_12_n_0 ;
  wire \rd_data0[4]_i_13_n_0 ;
  wire \rd_data0[4]_i_6_n_0 ;
  wire \rd_data0[4]_i_7_n_0 ;
  wire \rd_data0[4]_i_8_n_0 ;
  wire \rd_data0[4]_i_9_n_0 ;
  wire \rd_data0[5]_i_10_n_0 ;
  wire \rd_data0[5]_i_11_n_0 ;
  wire \rd_data0[5]_i_12_n_0 ;
  wire \rd_data0[5]_i_13_n_0 ;
  wire \rd_data0[5]_i_6_n_0 ;
  wire \rd_data0[5]_i_7_n_0 ;
  wire \rd_data0[5]_i_8_n_0 ;
  wire \rd_data0[5]_i_9_n_0 ;
  wire \rd_data0[6]_i_10_n_0 ;
  wire \rd_data0[6]_i_11_n_0 ;
  wire \rd_data0[6]_i_12_n_0 ;
  wire \rd_data0[6]_i_13_n_0 ;
  wire \rd_data0[6]_i_6_n_0 ;
  wire \rd_data0[6]_i_7_n_0 ;
  wire \rd_data0[6]_i_8_n_0 ;
  wire \rd_data0[6]_i_9_n_0 ;
  wire \rd_data0[7]_i_10_n_0 ;
  wire \rd_data0[7]_i_11_n_0 ;
  wire \rd_data0[7]_i_12_n_0 ;
  wire \rd_data0[7]_i_13_n_0 ;
  wire \rd_data0[7]_i_6_n_0 ;
  wire \rd_data0[7]_i_7_n_0 ;
  wire \rd_data0[7]_i_8_n_0 ;
  wire \rd_data0[7]_i_9_n_0 ;
  wire \rd_data0[8]_i_10_n_0 ;
  wire \rd_data0[8]_i_11_n_0 ;
  wire \rd_data0[8]_i_12_n_0 ;
  wire \rd_data0[8]_i_13_n_0 ;
  wire \rd_data0[8]_i_6_n_0 ;
  wire \rd_data0[8]_i_7_n_0 ;
  wire \rd_data0[8]_i_8_n_0 ;
  wire \rd_data0[8]_i_9_n_0 ;
  wire \rd_data0[9]_i_10_n_0 ;
  wire \rd_data0[9]_i_11_n_0 ;
  wire \rd_data0[9]_i_12_n_0 ;
  wire \rd_data0[9]_i_13_n_0 ;
  wire \rd_data0[9]_i_6_n_0 ;
  wire \rd_data0[9]_i_7_n_0 ;
  wire \rd_data0[9]_i_8_n_0 ;
  wire \rd_data0[9]_i_9_n_0 ;
  wire \rd_data0_reg[0]_i_2_n_0 ;
  wire \rd_data0_reg[0]_i_3_n_0 ;
  wire \rd_data0_reg[0]_i_4_n_0 ;
  wire \rd_data0_reg[0]_i_5_n_0 ;
  wire \rd_data0_reg[10]_i_2_n_0 ;
  wire \rd_data0_reg[10]_i_3_n_0 ;
  wire \rd_data0_reg[10]_i_4_n_0 ;
  wire \rd_data0_reg[10]_i_5_n_0 ;
  wire \rd_data0_reg[11]_i_2_n_0 ;
  wire \rd_data0_reg[11]_i_3_n_0 ;
  wire \rd_data0_reg[11]_i_4_n_0 ;
  wire \rd_data0_reg[11]_i_5_n_0 ;
  wire \rd_data0_reg[12]_i_2_n_0 ;
  wire \rd_data0_reg[12]_i_3_n_0 ;
  wire \rd_data0_reg[12]_i_4_n_0 ;
  wire \rd_data0_reg[12]_i_5_n_0 ;
  wire \rd_data0_reg[13]_i_2_n_0 ;
  wire \rd_data0_reg[13]_i_3_n_0 ;
  wire \rd_data0_reg[13]_i_4_n_0 ;
  wire \rd_data0_reg[13]_i_5_n_0 ;
  wire \rd_data0_reg[14]_i_2_n_0 ;
  wire \rd_data0_reg[14]_i_3_n_0 ;
  wire \rd_data0_reg[14]_i_4_n_0 ;
  wire \rd_data0_reg[14]_i_5_n_0 ;
  wire \rd_data0_reg[15]_i_2_n_0 ;
  wire \rd_data0_reg[15]_i_3_n_0 ;
  wire \rd_data0_reg[15]_i_4_n_0 ;
  wire \rd_data0_reg[15]_i_5_n_0 ;
  wire \rd_data0_reg[1]_i_2_n_0 ;
  wire \rd_data0_reg[1]_i_3_n_0 ;
  wire \rd_data0_reg[1]_i_4_n_0 ;
  wire \rd_data0_reg[1]_i_5_n_0 ;
  wire \rd_data0_reg[2]_i_2_n_0 ;
  wire \rd_data0_reg[2]_i_3_n_0 ;
  wire \rd_data0_reg[2]_i_4_n_0 ;
  wire \rd_data0_reg[2]_i_5_n_0 ;
  wire \rd_data0_reg[3]_i_2_n_0 ;
  wire \rd_data0_reg[3]_i_3_n_0 ;
  wire \rd_data0_reg[3]_i_4_n_0 ;
  wire \rd_data0_reg[3]_i_5_n_0 ;
  wire \rd_data0_reg[4]_i_2_n_0 ;
  wire \rd_data0_reg[4]_i_3_n_0 ;
  wire \rd_data0_reg[4]_i_4_n_0 ;
  wire \rd_data0_reg[4]_i_5_n_0 ;
  wire \rd_data0_reg[5]_i_2_n_0 ;
  wire \rd_data0_reg[5]_i_3_n_0 ;
  wire \rd_data0_reg[5]_i_4_n_0 ;
  wire \rd_data0_reg[5]_i_5_n_0 ;
  wire \rd_data0_reg[6]_i_2_n_0 ;
  wire \rd_data0_reg[6]_i_3_n_0 ;
  wire \rd_data0_reg[6]_i_4_n_0 ;
  wire \rd_data0_reg[6]_i_5_n_0 ;
  wire \rd_data0_reg[7]_i_2_n_0 ;
  wire \rd_data0_reg[7]_i_3_n_0 ;
  wire \rd_data0_reg[7]_i_4_n_0 ;
  wire \rd_data0_reg[7]_i_5_n_0 ;
  wire \rd_data0_reg[8]_i_2_n_0 ;
  wire \rd_data0_reg[8]_i_3_n_0 ;
  wire \rd_data0_reg[8]_i_4_n_0 ;
  wire \rd_data0_reg[8]_i_5_n_0 ;
  wire \rd_data0_reg[9]_i_2_n_0 ;
  wire \rd_data0_reg[9]_i_3_n_0 ;
  wire \rd_data0_reg[9]_i_4_n_0 ;
  wire \rd_data0_reg[9]_i_5_n_0 ;
  wire [15:0]rd_data1;
  wire \rd_data1[0]_i_10_n_0 ;
  wire \rd_data1[0]_i_11_n_0 ;
  wire \rd_data1[0]_i_12_n_0 ;
  wire \rd_data1[0]_i_13_n_0 ;
  wire \rd_data1[0]_i_6_n_0 ;
  wire \rd_data1[0]_i_7_n_0 ;
  wire \rd_data1[0]_i_8_n_0 ;
  wire \rd_data1[0]_i_9_n_0 ;
  wire \rd_data1[10]_i_10_n_0 ;
  wire \rd_data1[10]_i_11_n_0 ;
  wire \rd_data1[10]_i_12_n_0 ;
  wire \rd_data1[10]_i_13_n_0 ;
  wire \rd_data1[10]_i_6_n_0 ;
  wire \rd_data1[10]_i_7_n_0 ;
  wire \rd_data1[10]_i_8_n_0 ;
  wire \rd_data1[10]_i_9_n_0 ;
  wire \rd_data1[11]_i_10_n_0 ;
  wire \rd_data1[11]_i_11_n_0 ;
  wire \rd_data1[11]_i_12_n_0 ;
  wire \rd_data1[11]_i_13_n_0 ;
  wire \rd_data1[11]_i_6_n_0 ;
  wire \rd_data1[11]_i_7_n_0 ;
  wire \rd_data1[11]_i_8_n_0 ;
  wire \rd_data1[11]_i_9_n_0 ;
  wire \rd_data1[12]_i_10_n_0 ;
  wire \rd_data1[12]_i_11_n_0 ;
  wire \rd_data1[12]_i_12_n_0 ;
  wire \rd_data1[12]_i_13_n_0 ;
  wire \rd_data1[12]_i_6_n_0 ;
  wire \rd_data1[12]_i_7_n_0 ;
  wire \rd_data1[12]_i_8_n_0 ;
  wire \rd_data1[12]_i_9_n_0 ;
  wire \rd_data1[13]_i_10_n_0 ;
  wire \rd_data1[13]_i_11_n_0 ;
  wire \rd_data1[13]_i_12_n_0 ;
  wire \rd_data1[13]_i_13_n_0 ;
  wire \rd_data1[13]_i_6_n_0 ;
  wire \rd_data1[13]_i_7_n_0 ;
  wire \rd_data1[13]_i_8_n_0 ;
  wire \rd_data1[13]_i_9_n_0 ;
  wire \rd_data1[14]_i_10_n_0 ;
  wire \rd_data1[14]_i_11_n_0 ;
  wire \rd_data1[14]_i_12_n_0 ;
  wire \rd_data1[14]_i_13_n_0 ;
  wire \rd_data1[14]_i_6_n_0 ;
  wire \rd_data1[14]_i_7_n_0 ;
  wire \rd_data1[14]_i_8_n_0 ;
  wire \rd_data1[14]_i_9_n_0 ;
  wire \rd_data1[15]_i_10_n_0 ;
  wire \rd_data1[15]_i_11_n_0 ;
  wire \rd_data1[15]_i_12_n_0 ;
  wire \rd_data1[15]_i_13_n_0 ;
  wire \rd_data1[15]_i_6_n_0 ;
  wire \rd_data1[15]_i_7_n_0 ;
  wire \rd_data1[15]_i_8_n_0 ;
  wire \rd_data1[15]_i_9_n_0 ;
  wire \rd_data1[1]_i_10_n_0 ;
  wire \rd_data1[1]_i_11_n_0 ;
  wire \rd_data1[1]_i_12_n_0 ;
  wire \rd_data1[1]_i_13_n_0 ;
  wire \rd_data1[1]_i_6_n_0 ;
  wire \rd_data1[1]_i_7_n_0 ;
  wire \rd_data1[1]_i_8_n_0 ;
  wire \rd_data1[1]_i_9_n_0 ;
  wire \rd_data1[2]_i_10_n_0 ;
  wire \rd_data1[2]_i_11_n_0 ;
  wire \rd_data1[2]_i_12_n_0 ;
  wire \rd_data1[2]_i_13_n_0 ;
  wire \rd_data1[2]_i_6_n_0 ;
  wire \rd_data1[2]_i_7_n_0 ;
  wire \rd_data1[2]_i_8_n_0 ;
  wire \rd_data1[2]_i_9_n_0 ;
  wire \rd_data1[3]_i_10_n_0 ;
  wire \rd_data1[3]_i_11_n_0 ;
  wire \rd_data1[3]_i_12_n_0 ;
  wire \rd_data1[3]_i_13_n_0 ;
  wire \rd_data1[3]_i_6_n_0 ;
  wire \rd_data1[3]_i_7_n_0 ;
  wire \rd_data1[3]_i_8_n_0 ;
  wire \rd_data1[3]_i_9_n_0 ;
  wire \rd_data1[4]_i_10_n_0 ;
  wire \rd_data1[4]_i_11_n_0 ;
  wire \rd_data1[4]_i_12_n_0 ;
  wire \rd_data1[4]_i_13_n_0 ;
  wire \rd_data1[4]_i_6_n_0 ;
  wire \rd_data1[4]_i_7_n_0 ;
  wire \rd_data1[4]_i_8_n_0 ;
  wire \rd_data1[4]_i_9_n_0 ;
  wire \rd_data1[5]_i_10_n_0 ;
  wire \rd_data1[5]_i_11_n_0 ;
  wire \rd_data1[5]_i_12_n_0 ;
  wire \rd_data1[5]_i_13_n_0 ;
  wire \rd_data1[5]_i_6_n_0 ;
  wire \rd_data1[5]_i_7_n_0 ;
  wire \rd_data1[5]_i_8_n_0 ;
  wire \rd_data1[5]_i_9_n_0 ;
  wire \rd_data1[6]_i_10_n_0 ;
  wire \rd_data1[6]_i_11_n_0 ;
  wire \rd_data1[6]_i_12_n_0 ;
  wire \rd_data1[6]_i_13_n_0 ;
  wire \rd_data1[6]_i_6_n_0 ;
  wire \rd_data1[6]_i_7_n_0 ;
  wire \rd_data1[6]_i_8_n_0 ;
  wire \rd_data1[6]_i_9_n_0 ;
  wire \rd_data1[7]_i_10_n_0 ;
  wire \rd_data1[7]_i_11_n_0 ;
  wire \rd_data1[7]_i_12_n_0 ;
  wire \rd_data1[7]_i_13_n_0 ;
  wire \rd_data1[7]_i_6_n_0 ;
  wire \rd_data1[7]_i_7_n_0 ;
  wire \rd_data1[7]_i_8_n_0 ;
  wire \rd_data1[7]_i_9_n_0 ;
  wire \rd_data1[8]_i_10_n_0 ;
  wire \rd_data1[8]_i_11_n_0 ;
  wire \rd_data1[8]_i_12_n_0 ;
  wire \rd_data1[8]_i_13_n_0 ;
  wire \rd_data1[8]_i_6_n_0 ;
  wire \rd_data1[8]_i_7_n_0 ;
  wire \rd_data1[8]_i_8_n_0 ;
  wire \rd_data1[8]_i_9_n_0 ;
  wire \rd_data1[9]_i_10_n_0 ;
  wire \rd_data1[9]_i_11_n_0 ;
  wire \rd_data1[9]_i_12_n_0 ;
  wire \rd_data1[9]_i_13_n_0 ;
  wire \rd_data1[9]_i_6_n_0 ;
  wire \rd_data1[9]_i_7_n_0 ;
  wire \rd_data1[9]_i_8_n_0 ;
  wire \rd_data1[9]_i_9_n_0 ;
  wire \rd_data1_reg[0]_i_2_n_0 ;
  wire \rd_data1_reg[0]_i_3_n_0 ;
  wire \rd_data1_reg[0]_i_4_n_0 ;
  wire \rd_data1_reg[0]_i_5_n_0 ;
  wire \rd_data1_reg[10]_i_2_n_0 ;
  wire \rd_data1_reg[10]_i_3_n_0 ;
  wire \rd_data1_reg[10]_i_4_n_0 ;
  wire \rd_data1_reg[10]_i_5_n_0 ;
  wire \rd_data1_reg[11]_i_2_n_0 ;
  wire \rd_data1_reg[11]_i_3_n_0 ;
  wire \rd_data1_reg[11]_i_4_n_0 ;
  wire \rd_data1_reg[11]_i_5_n_0 ;
  wire \rd_data1_reg[12]_i_2_n_0 ;
  wire \rd_data1_reg[12]_i_3_n_0 ;
  wire \rd_data1_reg[12]_i_4_n_0 ;
  wire \rd_data1_reg[12]_i_5_n_0 ;
  wire \rd_data1_reg[13]_i_2_n_0 ;
  wire \rd_data1_reg[13]_i_3_n_0 ;
  wire \rd_data1_reg[13]_i_4_n_0 ;
  wire \rd_data1_reg[13]_i_5_n_0 ;
  wire \rd_data1_reg[14]_i_2_n_0 ;
  wire \rd_data1_reg[14]_i_3_n_0 ;
  wire \rd_data1_reg[14]_i_4_n_0 ;
  wire \rd_data1_reg[14]_i_5_n_0 ;
  wire \rd_data1_reg[15]_i_2_n_0 ;
  wire \rd_data1_reg[15]_i_3_n_0 ;
  wire \rd_data1_reg[15]_i_4_n_0 ;
  wire \rd_data1_reg[15]_i_5_n_0 ;
  wire \rd_data1_reg[1]_i_2_n_0 ;
  wire \rd_data1_reg[1]_i_3_n_0 ;
  wire \rd_data1_reg[1]_i_4_n_0 ;
  wire \rd_data1_reg[1]_i_5_n_0 ;
  wire \rd_data1_reg[2]_i_2_n_0 ;
  wire \rd_data1_reg[2]_i_3_n_0 ;
  wire \rd_data1_reg[2]_i_4_n_0 ;
  wire \rd_data1_reg[2]_i_5_n_0 ;
  wire \rd_data1_reg[3]_i_2_n_0 ;
  wire \rd_data1_reg[3]_i_3_n_0 ;
  wire \rd_data1_reg[3]_i_4_n_0 ;
  wire \rd_data1_reg[3]_i_5_n_0 ;
  wire \rd_data1_reg[4]_i_2_n_0 ;
  wire \rd_data1_reg[4]_i_3_n_0 ;
  wire \rd_data1_reg[4]_i_4_n_0 ;
  wire \rd_data1_reg[4]_i_5_n_0 ;
  wire \rd_data1_reg[5]_i_2_n_0 ;
  wire \rd_data1_reg[5]_i_3_n_0 ;
  wire \rd_data1_reg[5]_i_4_n_0 ;
  wire \rd_data1_reg[5]_i_5_n_0 ;
  wire \rd_data1_reg[6]_i_2_n_0 ;
  wire \rd_data1_reg[6]_i_3_n_0 ;
  wire \rd_data1_reg[6]_i_4_n_0 ;
  wire \rd_data1_reg[6]_i_5_n_0 ;
  wire \rd_data1_reg[7]_i_2_n_0 ;
  wire \rd_data1_reg[7]_i_3_n_0 ;
  wire \rd_data1_reg[7]_i_4_n_0 ;
  wire \rd_data1_reg[7]_i_5_n_0 ;
  wire \rd_data1_reg[8]_i_2_n_0 ;
  wire \rd_data1_reg[8]_i_3_n_0 ;
  wire \rd_data1_reg[8]_i_4_n_0 ;
  wire \rd_data1_reg[8]_i_5_n_0 ;
  wire \rd_data1_reg[9]_i_2_n_0 ;
  wire \rd_data1_reg[9]_i_3_n_0 ;
  wire \rd_data1_reg[9]_i_4_n_0 ;
  wire \rd_data1_reg[9]_i_5_n_0 ;
  wire rstn;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tready_i_1_n_0;
  wire s_axis_tvalid;
  wire s_axis_tvalid_bf;

  LUT4 #(
    .INIT(16'h0001)) 
    \addr0a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(\addr0a[10]_i_1_n_0 ));
  FDRE \addr0a_reg[0] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr0a[0]),
        .R(p_0_in));
  FDRE \addr0a_reg[10] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr0a[10]),
        .R(p_0_in));
  FDRE \addr0a_reg[1] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr0a[1]),
        .R(p_0_in));
  FDRE \addr0a_reg[2] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr0a[2]),
        .R(p_0_in));
  FDRE \addr0a_reg[3] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr0a[3]),
        .R(p_0_in));
  FDRE \addr0a_reg[4] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr0a[4]),
        .R(p_0_in));
  FDRE \addr0a_reg[5] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr0a[5]),
        .R(p_0_in));
  FDRE \addr0a_reg[6] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr0a[6]),
        .R(p_0_in));
  FDRE \addr0a_reg[7] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr0a[7]),
        .R(p_0_in));
  FDRE \addr0a_reg[8] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr0a[8]),
        .R(p_0_in));
  FDRE \addr0a_reg[9] 
       (.C(clk),
        .CE(\addr0a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr0a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0001)) 
    \addr0b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .O(\addr0b[10]_i_1_n_0 ));
  FDRE \addr0b_reg[0] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr0b[0]),
        .R(p_0_in));
  FDRE \addr0b_reg[10] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr0b[10]),
        .R(p_0_in));
  FDRE \addr0b_reg[1] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr0b[1]),
        .R(p_0_in));
  FDRE \addr0b_reg[2] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr0b[2]),
        .R(p_0_in));
  FDRE \addr0b_reg[3] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr0b[3]),
        .R(p_0_in));
  FDRE \addr0b_reg[4] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr0b[4]),
        .R(p_0_in));
  FDRE \addr0b_reg[5] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr0b[5]),
        .R(p_0_in));
  FDRE \addr0b_reg[6] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr0b[6]),
        .R(p_0_in));
  FDRE \addr0b_reg[7] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr0b[7]),
        .R(p_0_in));
  FDRE \addr0b_reg[8] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr0b[8]),
        .R(p_0_in));
  FDRE \addr0b_reg[9] 
       (.C(clk),
        .CE(\addr0b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr0b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr10a[10]_i_1 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[21]),
        .I3(s_axis_tdata[23]),
        .O(\addr10a[10]_i_1_n_0 ));
  FDRE \addr10a_reg[0] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr10a[0]),
        .R(p_0_in));
  FDRE \addr10a_reg[10] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr10a[10]),
        .R(p_0_in));
  FDRE \addr10a_reg[1] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr10a[1]),
        .R(p_0_in));
  FDRE \addr10a_reg[2] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr10a[2]),
        .R(p_0_in));
  FDRE \addr10a_reg[3] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr10a[3]),
        .R(p_0_in));
  FDRE \addr10a_reg[4] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr10a[4]),
        .R(p_0_in));
  FDRE \addr10a_reg[5] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr10a[5]),
        .R(p_0_in));
  FDRE \addr10a_reg[6] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr10a[6]),
        .R(p_0_in));
  FDRE \addr10a_reg[7] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr10a[7]),
        .R(p_0_in));
  FDRE \addr10a_reg[8] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr10a[8]),
        .R(p_0_in));
  FDRE \addr10a_reg[9] 
       (.C(clk),
        .CE(\addr10a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr10a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr10b[10]_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[11]),
        .O(\addr10b[10]_i_1_n_0 ));
  FDRE \addr10b_reg[0] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr10b[0]),
        .R(p_0_in));
  FDRE \addr10b_reg[10] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr10b[10]),
        .R(p_0_in));
  FDRE \addr10b_reg[1] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr10b[1]),
        .R(p_0_in));
  FDRE \addr10b_reg[2] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr10b[2]),
        .R(p_0_in));
  FDRE \addr10b_reg[3] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr10b[3]),
        .R(p_0_in));
  FDRE \addr10b_reg[4] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr10b[4]),
        .R(p_0_in));
  FDRE \addr10b_reg[5] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr10b[5]),
        .R(p_0_in));
  FDRE \addr10b_reg[6] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr10b[6]),
        .R(p_0_in));
  FDRE \addr10b_reg[7] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr10b[7]),
        .R(p_0_in));
  FDRE \addr10b_reg[8] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr10b[8]),
        .R(p_0_in));
  FDRE \addr10b_reg[9] 
       (.C(clk),
        .CE(\addr10b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr10b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr11a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(\addr11a[10]_i_1_n_0 ));
  FDRE \addr11a_reg[0] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr11a[0]),
        .R(p_0_in));
  FDRE \addr11a_reg[10] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr11a[10]),
        .R(p_0_in));
  FDRE \addr11a_reg[1] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr11a[1]),
        .R(p_0_in));
  FDRE \addr11a_reg[2] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr11a[2]),
        .R(p_0_in));
  FDRE \addr11a_reg[3] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr11a[3]),
        .R(p_0_in));
  FDRE \addr11a_reg[4] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr11a[4]),
        .R(p_0_in));
  FDRE \addr11a_reg[5] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr11a[5]),
        .R(p_0_in));
  FDRE \addr11a_reg[6] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr11a[6]),
        .R(p_0_in));
  FDRE \addr11a_reg[7] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr11a[7]),
        .R(p_0_in));
  FDRE \addr11a_reg[8] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr11a[8]),
        .R(p_0_in));
  FDRE \addr11a_reg[9] 
       (.C(clk),
        .CE(\addr11a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr11a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr11b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .O(\addr11b[10]_i_1_n_0 ));
  FDRE \addr11b_reg[0] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr11b[0]),
        .R(p_0_in));
  FDRE \addr11b_reg[10] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr11b[10]),
        .R(p_0_in));
  FDRE \addr11b_reg[1] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr11b[1]),
        .R(p_0_in));
  FDRE \addr11b_reg[2] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr11b[2]),
        .R(p_0_in));
  FDRE \addr11b_reg[3] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr11b[3]),
        .R(p_0_in));
  FDRE \addr11b_reg[4] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr11b[4]),
        .R(p_0_in));
  FDRE \addr11b_reg[5] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr11b[5]),
        .R(p_0_in));
  FDRE \addr11b_reg[6] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr11b[6]),
        .R(p_0_in));
  FDRE \addr11b_reg[7] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr11b[7]),
        .R(p_0_in));
  FDRE \addr11b_reg[8] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr11b[8]),
        .R(p_0_in));
  FDRE \addr11b_reg[9] 
       (.C(clk),
        .CE(\addr11b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr11b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr12a[10]_i_1 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[22]),
        .O(\addr12a[10]_i_1_n_0 ));
  FDRE \addr12a_reg[0] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr12a[0]),
        .R(p_0_in));
  FDRE \addr12a_reg[10] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr12a[10]),
        .R(p_0_in));
  FDRE \addr12a_reg[1] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr12a[1]),
        .R(p_0_in));
  FDRE \addr12a_reg[2] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr12a[2]),
        .R(p_0_in));
  FDRE \addr12a_reg[3] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr12a[3]),
        .R(p_0_in));
  FDRE \addr12a_reg[4] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr12a[4]),
        .R(p_0_in));
  FDRE \addr12a_reg[5] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr12a[5]),
        .R(p_0_in));
  FDRE \addr12a_reg[6] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr12a[6]),
        .R(p_0_in));
  FDRE \addr12a_reg[7] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr12a[7]),
        .R(p_0_in));
  FDRE \addr12a_reg[8] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr12a[8]),
        .R(p_0_in));
  FDRE \addr12a_reg[9] 
       (.C(clk),
        .CE(\addr12a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr12a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr12b[10]_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[10]),
        .O(\addr12b[10]_i_1_n_0 ));
  FDRE \addr12b_reg[0] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr12b[0]),
        .R(p_0_in));
  FDRE \addr12b_reg[10] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr12b[10]),
        .R(p_0_in));
  FDRE \addr12b_reg[1] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr12b[1]),
        .R(p_0_in));
  FDRE \addr12b_reg[2] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr12b[2]),
        .R(p_0_in));
  FDRE \addr12b_reg[3] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr12b[3]),
        .R(p_0_in));
  FDRE \addr12b_reg[4] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr12b[4]),
        .R(p_0_in));
  FDRE \addr12b_reg[5] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr12b[5]),
        .R(p_0_in));
  FDRE \addr12b_reg[6] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr12b[6]),
        .R(p_0_in));
  FDRE \addr12b_reg[7] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr12b[7]),
        .R(p_0_in));
  FDRE \addr12b_reg[8] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr12b[8]),
        .R(p_0_in));
  FDRE \addr12b_reg[9] 
       (.C(clk),
        .CE(\addr12b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr12b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr13a[10]_i_1 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[23]),
        .O(\addr13a[10]_i_1_n_0 ));
  FDRE \addr13a_reg[0] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr13a[0]),
        .R(p_0_in));
  FDRE \addr13a_reg[10] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr13a[10]),
        .R(p_0_in));
  FDRE \addr13a_reg[1] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr13a[1]),
        .R(p_0_in));
  FDRE \addr13a_reg[2] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr13a[2]),
        .R(p_0_in));
  FDRE \addr13a_reg[3] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr13a[3]),
        .R(p_0_in));
  FDRE \addr13a_reg[4] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr13a[4]),
        .R(p_0_in));
  FDRE \addr13a_reg[5] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr13a[5]),
        .R(p_0_in));
  FDRE \addr13a_reg[6] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr13a[6]),
        .R(p_0_in));
  FDRE \addr13a_reg[7] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr13a[7]),
        .R(p_0_in));
  FDRE \addr13a_reg[8] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr13a[8]),
        .R(p_0_in));
  FDRE \addr13a_reg[9] 
       (.C(clk),
        .CE(\addr13a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr13a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr13b[10]_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[11]),
        .O(\addr13b[10]_i_1_n_0 ));
  FDRE \addr13b_reg[0] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr13b[0]),
        .R(p_0_in));
  FDRE \addr13b_reg[10] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr13b[10]),
        .R(p_0_in));
  FDRE \addr13b_reg[1] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr13b[1]),
        .R(p_0_in));
  FDRE \addr13b_reg[2] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr13b[2]),
        .R(p_0_in));
  FDRE \addr13b_reg[3] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr13b[3]),
        .R(p_0_in));
  FDRE \addr13b_reg[4] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr13b[4]),
        .R(p_0_in));
  FDRE \addr13b_reg[5] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr13b[5]),
        .R(p_0_in));
  FDRE \addr13b_reg[6] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr13b[6]),
        .R(p_0_in));
  FDRE \addr13b_reg[7] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr13b[7]),
        .R(p_0_in));
  FDRE \addr13b_reg[8] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr13b[8]),
        .R(p_0_in));
  FDRE \addr13b_reg[9] 
       (.C(clk),
        .CE(\addr13b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr13b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr14a[10]_i_1 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[21]),
        .O(\addr14a[10]_i_1_n_0 ));
  FDRE \addr14a_reg[0] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr14a[0]),
        .R(p_0_in));
  FDRE \addr14a_reg[10] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr14a[10]),
        .R(p_0_in));
  FDRE \addr14a_reg[1] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr14a[1]),
        .R(p_0_in));
  FDRE \addr14a_reg[2] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr14a[2]),
        .R(p_0_in));
  FDRE \addr14a_reg[3] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr14a[3]),
        .R(p_0_in));
  FDRE \addr14a_reg[4] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr14a[4]),
        .R(p_0_in));
  FDRE \addr14a_reg[5] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr14a[5]),
        .R(p_0_in));
  FDRE \addr14a_reg[6] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr14a[6]),
        .R(p_0_in));
  FDRE \addr14a_reg[7] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr14a[7]),
        .R(p_0_in));
  FDRE \addr14a_reg[8] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr14a[8]),
        .R(p_0_in));
  FDRE \addr14a_reg[9] 
       (.C(clk),
        .CE(\addr14a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr14a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr14b[10]_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[9]),
        .O(\addr14b[10]_i_1_n_0 ));
  FDRE \addr14b_reg[0] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr14b[0]),
        .R(p_0_in));
  FDRE \addr14b_reg[10] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr14b[10]),
        .R(p_0_in));
  FDRE \addr14b_reg[1] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr14b[1]),
        .R(p_0_in));
  FDRE \addr14b_reg[2] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr14b[2]),
        .R(p_0_in));
  FDRE \addr14b_reg[3] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr14b[3]),
        .R(p_0_in));
  FDRE \addr14b_reg[4] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr14b[4]),
        .R(p_0_in));
  FDRE \addr14b_reg[5] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr14b[5]),
        .R(p_0_in));
  FDRE \addr14b_reg[6] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr14b[6]),
        .R(p_0_in));
  FDRE \addr14b_reg[7] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr14b[7]),
        .R(p_0_in));
  FDRE \addr14b_reg[8] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr14b[8]),
        .R(p_0_in));
  FDRE \addr14b_reg[9] 
       (.C(clk),
        .CE(\addr14b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr14b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr15a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(\addr15a[10]_i_1_n_0 ));
  FDRE \addr15a_reg[0] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr15a[0]),
        .R(p_0_in));
  FDRE \addr15a_reg[10] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr15a[10]),
        .R(p_0_in));
  FDRE \addr15a_reg[1] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr15a[1]),
        .R(p_0_in));
  FDRE \addr15a_reg[2] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr15a[2]),
        .R(p_0_in));
  FDRE \addr15a_reg[3] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr15a[3]),
        .R(p_0_in));
  FDRE \addr15a_reg[4] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr15a[4]),
        .R(p_0_in));
  FDRE \addr15a_reg[5] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr15a[5]),
        .R(p_0_in));
  FDRE \addr15a_reg[6] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr15a[6]),
        .R(p_0_in));
  FDRE \addr15a_reg[7] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr15a[7]),
        .R(p_0_in));
  FDRE \addr15a_reg[8] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr15a[8]),
        .R(p_0_in));
  FDRE \addr15a_reg[9] 
       (.C(clk),
        .CE(\addr15a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr15a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h8000)) 
    \addr15b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .O(\addr15b[10]_i_1_n_0 ));
  FDRE \addr15b_reg[0] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr15b[0]),
        .R(p_0_in));
  FDRE \addr15b_reg[10] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr15b[10]),
        .R(p_0_in));
  FDRE \addr15b_reg[1] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr15b[1]),
        .R(p_0_in));
  FDRE \addr15b_reg[2] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr15b[2]),
        .R(p_0_in));
  FDRE \addr15b_reg[3] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr15b[3]),
        .R(p_0_in));
  FDRE \addr15b_reg[4] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr15b[4]),
        .R(p_0_in));
  FDRE \addr15b_reg[5] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr15b[5]),
        .R(p_0_in));
  FDRE \addr15b_reg[6] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr15b[6]),
        .R(p_0_in));
  FDRE \addr15b_reg[7] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr15b[7]),
        .R(p_0_in));
  FDRE \addr15b_reg[8] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr15b[8]),
        .R(p_0_in));
  FDRE \addr15b_reg[9] 
       (.C(clk),
        .CE(\addr15b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr15b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr1a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(\addr1a[10]_i_1_n_0 ));
  FDRE \addr1a_reg[0] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr1a[0]),
        .R(p_0_in));
  FDRE \addr1a_reg[10] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr1a[10]),
        .R(p_0_in));
  FDRE \addr1a_reg[1] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr1a[1]),
        .R(p_0_in));
  FDRE \addr1a_reg[2] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr1a[2]),
        .R(p_0_in));
  FDRE \addr1a_reg[3] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr1a[3]),
        .R(p_0_in));
  FDRE \addr1a_reg[4] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr1a[4]),
        .R(p_0_in));
  FDRE \addr1a_reg[5] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr1a[5]),
        .R(p_0_in));
  FDRE \addr1a_reg[6] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr1a[6]),
        .R(p_0_in));
  FDRE \addr1a_reg[7] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr1a[7]),
        .R(p_0_in));
  FDRE \addr1a_reg[8] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr1a[8]),
        .R(p_0_in));
  FDRE \addr1a_reg[9] 
       (.C(clk),
        .CE(\addr1a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr1a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr1b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .O(\addr1b[10]_i_1_n_0 ));
  FDRE \addr1b_reg[0] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr1b[0]),
        .R(p_0_in));
  FDRE \addr1b_reg[10] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr1b[10]),
        .R(p_0_in));
  FDRE \addr1b_reg[1] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr1b[1]),
        .R(p_0_in));
  FDRE \addr1b_reg[2] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr1b[2]),
        .R(p_0_in));
  FDRE \addr1b_reg[3] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr1b[3]),
        .R(p_0_in));
  FDRE \addr1b_reg[4] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr1b[4]),
        .R(p_0_in));
  FDRE \addr1b_reg[5] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr1b[5]),
        .R(p_0_in));
  FDRE \addr1b_reg[6] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr1b[6]),
        .R(p_0_in));
  FDRE \addr1b_reg[7] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr1b[7]),
        .R(p_0_in));
  FDRE \addr1b_reg[8] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr1b[8]),
        .R(p_0_in));
  FDRE \addr1b_reg[9] 
       (.C(clk),
        .CE(\addr1b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr1b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr2a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[21]),
        .I3(s_axis_tdata[20]),
        .O(\addr2a[10]_i_1_n_0 ));
  FDRE \addr2a_reg[0] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr2a[0]),
        .R(p_0_in));
  FDRE \addr2a_reg[10] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr2a[10]),
        .R(p_0_in));
  FDRE \addr2a_reg[1] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr2a[1]),
        .R(p_0_in));
  FDRE \addr2a_reg[2] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr2a[2]),
        .R(p_0_in));
  FDRE \addr2a_reg[3] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr2a[3]),
        .R(p_0_in));
  FDRE \addr2a_reg[4] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr2a[4]),
        .R(p_0_in));
  FDRE \addr2a_reg[5] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr2a[5]),
        .R(p_0_in));
  FDRE \addr2a_reg[6] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr2a[6]),
        .R(p_0_in));
  FDRE \addr2a_reg[7] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr2a[7]),
        .R(p_0_in));
  FDRE \addr2a_reg[8] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr2a[8]),
        .R(p_0_in));
  FDRE \addr2a_reg[9] 
       (.C(clk),
        .CE(\addr2a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr2a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr2b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[8]),
        .O(\addr2b[10]_i_1_n_0 ));
  FDRE \addr2b_reg[0] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr2b[0]),
        .R(p_0_in));
  FDRE \addr2b_reg[10] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr2b[10]),
        .R(p_0_in));
  FDRE \addr2b_reg[1] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr2b[1]),
        .R(p_0_in));
  FDRE \addr2b_reg[2] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr2b[2]),
        .R(p_0_in));
  FDRE \addr2b_reg[3] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr2b[3]),
        .R(p_0_in));
  FDRE \addr2b_reg[4] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr2b[4]),
        .R(p_0_in));
  FDRE \addr2b_reg[5] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr2b[5]),
        .R(p_0_in));
  FDRE \addr2b_reg[6] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr2b[6]),
        .R(p_0_in));
  FDRE \addr2b_reg[7] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr2b[7]),
        .R(p_0_in));
  FDRE \addr2b_reg[8] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr2b[8]),
        .R(p_0_in));
  FDRE \addr2b_reg[9] 
       (.C(clk),
        .CE(\addr2b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr2b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr3a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(\addr3a[10]_i_1_n_0 ));
  FDRE \addr3a_reg[0] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr3a[0]),
        .R(p_0_in));
  FDRE \addr3a_reg[10] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr3a[10]),
        .R(p_0_in));
  FDRE \addr3a_reg[1] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr3a[1]),
        .R(p_0_in));
  FDRE \addr3a_reg[2] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr3a[2]),
        .R(p_0_in));
  FDRE \addr3a_reg[3] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr3a[3]),
        .R(p_0_in));
  FDRE \addr3a_reg[4] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr3a[4]),
        .R(p_0_in));
  FDRE \addr3a_reg[5] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr3a[5]),
        .R(p_0_in));
  FDRE \addr3a_reg[6] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr3a[6]),
        .R(p_0_in));
  FDRE \addr3a_reg[7] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr3a[7]),
        .R(p_0_in));
  FDRE \addr3a_reg[8] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr3a[8]),
        .R(p_0_in));
  FDRE \addr3a_reg[9] 
       (.C(clk),
        .CE(\addr3a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr3a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr3b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .O(\addr3b[10]_i_1_n_0 ));
  FDRE \addr3b_reg[0] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr3b[0]),
        .R(p_0_in));
  FDRE \addr3b_reg[10] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr3b[10]),
        .R(p_0_in));
  FDRE \addr3b_reg[1] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr3b[1]),
        .R(p_0_in));
  FDRE \addr3b_reg[2] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr3b[2]),
        .R(p_0_in));
  FDRE \addr3b_reg[3] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr3b[3]),
        .R(p_0_in));
  FDRE \addr3b_reg[4] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr3b[4]),
        .R(p_0_in));
  FDRE \addr3b_reg[5] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr3b[5]),
        .R(p_0_in));
  FDRE \addr3b_reg[6] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr3b[6]),
        .R(p_0_in));
  FDRE \addr3b_reg[7] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr3b[7]),
        .R(p_0_in));
  FDRE \addr3b_reg[8] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr3b[8]),
        .R(p_0_in));
  FDRE \addr3b_reg[9] 
       (.C(clk),
        .CE(\addr3b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr3b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr4a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[21]),
        .O(\addr4a[10]_i_1_n_0 ));
  FDRE \addr4a_reg[0] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr4a[0]),
        .R(p_0_in));
  FDRE \addr4a_reg[10] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr4a[10]),
        .R(p_0_in));
  FDRE \addr4a_reg[1] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr4a[1]),
        .R(p_0_in));
  FDRE \addr4a_reg[2] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr4a[2]),
        .R(p_0_in));
  FDRE \addr4a_reg[3] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr4a[3]),
        .R(p_0_in));
  FDRE \addr4a_reg[4] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr4a[4]),
        .R(p_0_in));
  FDRE \addr4a_reg[5] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr4a[5]),
        .R(p_0_in));
  FDRE \addr4a_reg[6] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr4a[6]),
        .R(p_0_in));
  FDRE \addr4a_reg[7] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr4a[7]),
        .R(p_0_in));
  FDRE \addr4a_reg[8] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr4a[8]),
        .R(p_0_in));
  FDRE \addr4a_reg[9] 
       (.C(clk),
        .CE(\addr4a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr4a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr4b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[9]),
        .O(\addr4b[10]_i_1_n_0 ));
  FDRE \addr4b_reg[0] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr4b[0]),
        .R(p_0_in));
  FDRE \addr4b_reg[10] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr4b[10]),
        .R(p_0_in));
  FDRE \addr4b_reg[1] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr4b[1]),
        .R(p_0_in));
  FDRE \addr4b_reg[2] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr4b[2]),
        .R(p_0_in));
  FDRE \addr4b_reg[3] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr4b[3]),
        .R(p_0_in));
  FDRE \addr4b_reg[4] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr4b[4]),
        .R(p_0_in));
  FDRE \addr4b_reg[5] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr4b[5]),
        .R(p_0_in));
  FDRE \addr4b_reg[6] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr4b[6]),
        .R(p_0_in));
  FDRE \addr4b_reg[7] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr4b[7]),
        .R(p_0_in));
  FDRE \addr4b_reg[8] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr4b[8]),
        .R(p_0_in));
  FDRE \addr4b_reg[9] 
       (.C(clk),
        .CE(\addr4b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr4b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr5a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[22]),
        .O(\addr5a[10]_i_1_n_0 ));
  FDRE \addr5a_reg[0] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr5a[0]),
        .R(p_0_in));
  FDRE \addr5a_reg[10] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr5a[10]),
        .R(p_0_in));
  FDRE \addr5a_reg[1] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr5a[1]),
        .R(p_0_in));
  FDRE \addr5a_reg[2] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr5a[2]),
        .R(p_0_in));
  FDRE \addr5a_reg[3] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr5a[3]),
        .R(p_0_in));
  FDRE \addr5a_reg[4] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr5a[4]),
        .R(p_0_in));
  FDRE \addr5a_reg[5] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr5a[5]),
        .R(p_0_in));
  FDRE \addr5a_reg[6] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr5a[6]),
        .R(p_0_in));
  FDRE \addr5a_reg[7] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr5a[7]),
        .R(p_0_in));
  FDRE \addr5a_reg[8] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr5a[8]),
        .R(p_0_in));
  FDRE \addr5a_reg[9] 
       (.C(clk),
        .CE(\addr5a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr5a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr5b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[10]),
        .O(\addr5b[10]_i_1_n_0 ));
  FDRE \addr5b_reg[0] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr5b[0]),
        .R(p_0_in));
  FDRE \addr5b_reg[10] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr5b[10]),
        .R(p_0_in));
  FDRE \addr5b_reg[1] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr5b[1]),
        .R(p_0_in));
  FDRE \addr5b_reg[2] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr5b[2]),
        .R(p_0_in));
  FDRE \addr5b_reg[3] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr5b[3]),
        .R(p_0_in));
  FDRE \addr5b_reg[4] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr5b[4]),
        .R(p_0_in));
  FDRE \addr5b_reg[5] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr5b[5]),
        .R(p_0_in));
  FDRE \addr5b_reg[6] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr5b[6]),
        .R(p_0_in));
  FDRE \addr5b_reg[7] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr5b[7]),
        .R(p_0_in));
  FDRE \addr5b_reg[8] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr5b[8]),
        .R(p_0_in));
  FDRE \addr5b_reg[9] 
       (.C(clk),
        .CE(\addr5b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr5b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr6a[10]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[21]),
        .I3(s_axis_tdata[22]),
        .O(\addr6a[10]_i_1_n_0 ));
  FDRE \addr6a_reg[0] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr6a[0]),
        .R(p_0_in));
  FDRE \addr6a_reg[10] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr6a[10]),
        .R(p_0_in));
  FDRE \addr6a_reg[1] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr6a[1]),
        .R(p_0_in));
  FDRE \addr6a_reg[2] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr6a[2]),
        .R(p_0_in));
  FDRE \addr6a_reg[3] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr6a[3]),
        .R(p_0_in));
  FDRE \addr6a_reg[4] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr6a[4]),
        .R(p_0_in));
  FDRE \addr6a_reg[5] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr6a[5]),
        .R(p_0_in));
  FDRE \addr6a_reg[6] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr6a[6]),
        .R(p_0_in));
  FDRE \addr6a_reg[7] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr6a[7]),
        .R(p_0_in));
  FDRE \addr6a_reg[8] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr6a[8]),
        .R(p_0_in));
  FDRE \addr6a_reg[9] 
       (.C(clk),
        .CE(\addr6a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr6a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr6b[10]_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[10]),
        .O(\addr6b[10]_i_1_n_0 ));
  FDRE \addr6b_reg[0] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr6b[0]),
        .R(p_0_in));
  FDRE \addr6b_reg[10] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr6b[10]),
        .R(p_0_in));
  FDRE \addr6b_reg[1] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr6b[1]),
        .R(p_0_in));
  FDRE \addr6b_reg[2] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr6b[2]),
        .R(p_0_in));
  FDRE \addr6b_reg[3] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr6b[3]),
        .R(p_0_in));
  FDRE \addr6b_reg[4] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr6b[4]),
        .R(p_0_in));
  FDRE \addr6b_reg[5] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr6b[5]),
        .R(p_0_in));
  FDRE \addr6b_reg[6] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr6b[6]),
        .R(p_0_in));
  FDRE \addr6b_reg[7] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr6b[7]),
        .R(p_0_in));
  FDRE \addr6b_reg[8] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr6b[8]),
        .R(p_0_in));
  FDRE \addr6b_reg[9] 
       (.C(clk),
        .CE(\addr6b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr6b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr7a[10]_i_1 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[21]),
        .O(\addr7a[10]_i_1_n_0 ));
  FDRE \addr7a_reg[0] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr7a[0]),
        .R(p_0_in));
  FDRE \addr7a_reg[10] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr7a[10]),
        .R(p_0_in));
  FDRE \addr7a_reg[1] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr7a[1]),
        .R(p_0_in));
  FDRE \addr7a_reg[2] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr7a[2]),
        .R(p_0_in));
  FDRE \addr7a_reg[3] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr7a[3]),
        .R(p_0_in));
  FDRE \addr7a_reg[4] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr7a[4]),
        .R(p_0_in));
  FDRE \addr7a_reg[5] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr7a[5]),
        .R(p_0_in));
  FDRE \addr7a_reg[6] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr7a[6]),
        .R(p_0_in));
  FDRE \addr7a_reg[7] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr7a[7]),
        .R(p_0_in));
  FDRE \addr7a_reg[8] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr7a[8]),
        .R(p_0_in));
  FDRE \addr7a_reg[9] 
       (.C(clk),
        .CE(\addr7a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr7a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h2000)) 
    \addr7b[10]_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_tdata[11]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .O(\addr7b[10]_i_1_n_0 ));
  FDRE \addr7b_reg[0] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr7b[0]),
        .R(p_0_in));
  FDRE \addr7b_reg[10] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr7b[10]),
        .R(p_0_in));
  FDRE \addr7b_reg[1] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr7b[1]),
        .R(p_0_in));
  FDRE \addr7b_reg[2] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr7b[2]),
        .R(p_0_in));
  FDRE \addr7b_reg[3] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr7b[3]),
        .R(p_0_in));
  FDRE \addr7b_reg[4] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr7b[4]),
        .R(p_0_in));
  FDRE \addr7b_reg[5] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr7b[5]),
        .R(p_0_in));
  FDRE \addr7b_reg[6] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr7b[6]),
        .R(p_0_in));
  FDRE \addr7b_reg[7] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr7b[7]),
        .R(p_0_in));
  FDRE \addr7b_reg[8] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr7b[8]),
        .R(p_0_in));
  FDRE \addr7b_reg[9] 
       (.C(clk),
        .CE(\addr7b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr7b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr8a[10]_i_1 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[21]),
        .O(\addr8a[10]_i_1_n_0 ));
  FDRE \addr8a_reg[0] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr8a[0]),
        .R(p_0_in));
  FDRE \addr8a_reg[10] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr8a[10]),
        .R(p_0_in));
  FDRE \addr8a_reg[1] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr8a[1]),
        .R(p_0_in));
  FDRE \addr8a_reg[2] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr8a[2]),
        .R(p_0_in));
  FDRE \addr8a_reg[3] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr8a[3]),
        .R(p_0_in));
  FDRE \addr8a_reg[4] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr8a[4]),
        .R(p_0_in));
  FDRE \addr8a_reg[5] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr8a[5]),
        .R(p_0_in));
  FDRE \addr8a_reg[6] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr8a[6]),
        .R(p_0_in));
  FDRE \addr8a_reg[7] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr8a[7]),
        .R(p_0_in));
  FDRE \addr8a_reg[8] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr8a[8]),
        .R(p_0_in));
  FDRE \addr8a_reg[9] 
       (.C(clk),
        .CE(\addr8a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr8a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h0010)) 
    \addr8b[10]_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[9]),
        .O(\addr8b[10]_i_1_n_0 ));
  FDRE \addr8b_reg[0] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr8b[0]),
        .R(p_0_in));
  FDRE \addr8b_reg[10] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr8b[10]),
        .R(p_0_in));
  FDRE \addr8b_reg[1] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr8b[1]),
        .R(p_0_in));
  FDRE \addr8b_reg[2] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr8b[2]),
        .R(p_0_in));
  FDRE \addr8b_reg[3] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr8b[3]),
        .R(p_0_in));
  FDRE \addr8b_reg[4] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr8b[4]),
        .R(p_0_in));
  FDRE \addr8b_reg[5] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr8b[5]),
        .R(p_0_in));
  FDRE \addr8b_reg[6] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr8b[6]),
        .R(p_0_in));
  FDRE \addr8b_reg[7] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr8b[7]),
        .R(p_0_in));
  FDRE \addr8b_reg[8] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr8b[8]),
        .R(p_0_in));
  FDRE \addr8b_reg[9] 
       (.C(clk),
        .CE(\addr8b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr8b[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr9a[10]_i_1 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[23]),
        .O(\addr9a[10]_i_1_n_0 ));
  FDRE \addr9a_reg[0] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(addr9a[0]),
        .R(p_0_in));
  FDRE \addr9a_reg[10] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(addr9a[10]),
        .R(p_0_in));
  FDRE \addr9a_reg[1] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(addr9a[1]),
        .R(p_0_in));
  FDRE \addr9a_reg[2] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(addr9a[2]),
        .R(p_0_in));
  FDRE \addr9a_reg[3] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(addr9a[3]),
        .R(p_0_in));
  FDRE \addr9a_reg[4] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(addr9a[4]),
        .R(p_0_in));
  FDRE \addr9a_reg[5] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(addr9a[5]),
        .R(p_0_in));
  FDRE \addr9a_reg[6] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(addr9a[6]),
        .R(p_0_in));
  FDRE \addr9a_reg[7] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(addr9a[7]),
        .R(p_0_in));
  FDRE \addr9a_reg[8] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(addr9a[8]),
        .R(p_0_in));
  FDRE \addr9a_reg[9] 
       (.C(clk),
        .CE(\addr9a[10]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(addr9a[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h1000)) 
    \addr9b[10]_i_1 
       (.I0(s_axis_tdata[9]),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[11]),
        .O(\addr9b[10]_i_1_n_0 ));
  FDRE \addr9b_reg[0] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(addr9b[0]),
        .R(p_0_in));
  FDRE \addr9b_reg[10] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(addr9b[10]),
        .R(p_0_in));
  FDRE \addr9b_reg[1] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(addr9b[1]),
        .R(p_0_in));
  FDRE \addr9b_reg[2] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(addr9b[2]),
        .R(p_0_in));
  FDRE \addr9b_reg[3] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(addr9b[3]),
        .R(p_0_in));
  FDRE \addr9b_reg[4] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(addr9b[4]),
        .R(p_0_in));
  FDRE \addr9b_reg[5] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(addr9b[5]),
        .R(p_0_in));
  FDRE \addr9b_reg[6] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(addr9b[6]),
        .R(p_0_in));
  FDRE \addr9b_reg[7] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(addr9b[7]),
        .R(p_0_in));
  FDRE \addr9b_reg[8] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(addr9b[8]),
        .R(p_0_in));
  FDRE \addr9b_reg[9] 
       (.C(clk),
        .CE(\addr9b[10]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(addr9b[9]),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[31]_i_1 
       (.I0(rstn),
        .O(p_0_in));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(m_axis_tdata[0]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(m_axis_tdata[10]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(m_axis_tdata[11]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(m_axis_tdata[12]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(m_axis_tdata[13]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(m_axis_tdata[14]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(m_axis_tdata[15]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(m_axis_tdata[16]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(m_axis_tdata[17]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(m_axis_tdata[18]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(m_axis_tdata[19]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(m_axis_tdata[1]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(m_axis_tdata[20]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(m_axis_tdata[21]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(m_axis_tdata[22]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(m_axis_tdata[23]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(m_axis_tdata[24]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(m_axis_tdata[25]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(m_axis_tdata[26]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(m_axis_tdata[27]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(m_axis_tdata[28]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(m_axis_tdata[29]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(m_axis_tdata[2]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(m_axis_tdata[30]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(m_axis_tdata[31]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(m_axis_tdata[3]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(m_axis_tdata[4]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(m_axis_tdata[5]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(m_axis_tdata[6]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(m_axis_tdata[7]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(m_axis_tdata[8]),
        .R(p_0_in));
  FDRE \m_axis_tdata_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(m_axis_tdata[9]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tlast_i_1
       (.I0(s_axis_tvalid_bf),
        .I1(rstn),
        .I2(m_axis_tvalid),
        .O(m_axis_tlast_i_1_n_0));
  FDRE m_axis_tlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tlast_i_1_n_0),
        .Q(m_axis_tvalid),
        .R(1'b0));
  FDRE m_axis_tready_bf_reg
       (.C(clk),
        .CE(1'b1),
        .D(m_axis_tready),
        .Q(m_axis_tready_bf),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_1 
       (.I0(\rd_data0_reg[0]_i_2_n_0 ),
        .I1(\rd_data0_reg[0]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[0]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[0]_i_5_n_0 ),
        .O(rd_data0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_10 
       (.I0(data5b[16]),
        .I1(data5b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[0]),
        .O(\rd_data0[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_11 
       (.I0(data7b[16]),
        .I1(data7b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[0]),
        .O(\rd_data0[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_12 
       (.I0(data1b[16]),
        .I1(data1b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[0]),
        .O(\rd_data0[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_13 
       (.I0(data3b[16]),
        .I1(data3b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[0]),
        .O(\rd_data0[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_6 
       (.I0(data13b[16]),
        .I1(data13b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[0]),
        .O(\rd_data0[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_7 
       (.I0(data15b[16]),
        .I1(data15b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[0]),
        .O(\rd_data0[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_8 
       (.I0(data9b[16]),
        .I1(data9b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[0]),
        .O(\rd_data0[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[0]_i_9 
       (.I0(data11b[16]),
        .I1(data11b[0]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[16]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[0]),
        .O(\rd_data0[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_1 
       (.I0(\rd_data0_reg[10]_i_2_n_0 ),
        .I1(\rd_data0_reg[10]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[10]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[10]_i_5_n_0 ),
        .O(rd_data0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_10 
       (.I0(data5b[26]),
        .I1(data5b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[10]),
        .O(\rd_data0[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_11 
       (.I0(data7b[26]),
        .I1(data7b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[10]),
        .O(\rd_data0[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_12 
       (.I0(data1b[26]),
        .I1(data1b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[10]),
        .O(\rd_data0[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_13 
       (.I0(data3b[26]),
        .I1(data3b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[10]),
        .O(\rd_data0[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_6 
       (.I0(data13b[26]),
        .I1(data13b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[10]),
        .O(\rd_data0[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_7 
       (.I0(data15b[26]),
        .I1(data15b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[10]),
        .O(\rd_data0[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_8 
       (.I0(data9b[26]),
        .I1(data9b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[10]),
        .O(\rd_data0[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[10]_i_9 
       (.I0(data11b[26]),
        .I1(data11b[10]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[26]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[10]),
        .O(\rd_data0[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_1 
       (.I0(\rd_data0_reg[11]_i_2_n_0 ),
        .I1(\rd_data0_reg[11]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[11]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[11]_i_5_n_0 ),
        .O(rd_data0[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_10 
       (.I0(data5b[27]),
        .I1(data5b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[11]),
        .O(\rd_data0[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_11 
       (.I0(data7b[27]),
        .I1(data7b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[11]),
        .O(\rd_data0[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_12 
       (.I0(data1b[27]),
        .I1(data1b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[11]),
        .O(\rd_data0[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_13 
       (.I0(data3b[27]),
        .I1(data3b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[11]),
        .O(\rd_data0[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_6 
       (.I0(data13b[27]),
        .I1(data13b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[11]),
        .O(\rd_data0[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_7 
       (.I0(data15b[27]),
        .I1(data15b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[11]),
        .O(\rd_data0[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_8 
       (.I0(data9b[27]),
        .I1(data9b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[11]),
        .O(\rd_data0[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[11]_i_9 
       (.I0(data11b[27]),
        .I1(data11b[11]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[27]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[11]),
        .O(\rd_data0[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_1 
       (.I0(\rd_data0_reg[12]_i_2_n_0 ),
        .I1(\rd_data0_reg[12]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[12]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[12]_i_5_n_0 ),
        .O(rd_data0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_10 
       (.I0(data5b[28]),
        .I1(data5b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[12]),
        .O(\rd_data0[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_11 
       (.I0(data7b[28]),
        .I1(data7b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[12]),
        .O(\rd_data0[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_12 
       (.I0(data1b[28]),
        .I1(data1b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[12]),
        .O(\rd_data0[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_13 
       (.I0(data3b[28]),
        .I1(data3b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[12]),
        .O(\rd_data0[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_6 
       (.I0(data13b[28]),
        .I1(data13b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[12]),
        .O(\rd_data0[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_7 
       (.I0(data15b[28]),
        .I1(data15b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[12]),
        .O(\rd_data0[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_8 
       (.I0(data9b[28]),
        .I1(data9b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[12]),
        .O(\rd_data0[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[12]_i_9 
       (.I0(data11b[28]),
        .I1(data11b[12]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[28]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[12]),
        .O(\rd_data0[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_1 
       (.I0(\rd_data0_reg[13]_i_2_n_0 ),
        .I1(\rd_data0_reg[13]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[13]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[13]_i_5_n_0 ),
        .O(rd_data0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_10 
       (.I0(data5b[29]),
        .I1(data5b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[13]),
        .O(\rd_data0[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_11 
       (.I0(data7b[29]),
        .I1(data7b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[13]),
        .O(\rd_data0[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_12 
       (.I0(data1b[29]),
        .I1(data1b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[13]),
        .O(\rd_data0[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_13 
       (.I0(data3b[29]),
        .I1(data3b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[13]),
        .O(\rd_data0[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_6 
       (.I0(data13b[29]),
        .I1(data13b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[13]),
        .O(\rd_data0[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_7 
       (.I0(data15b[29]),
        .I1(data15b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[13]),
        .O(\rd_data0[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_8 
       (.I0(data9b[29]),
        .I1(data9b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[13]),
        .O(\rd_data0[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[13]_i_9 
       (.I0(data11b[29]),
        .I1(data11b[13]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[29]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[13]),
        .O(\rd_data0[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_1 
       (.I0(\rd_data0_reg[14]_i_2_n_0 ),
        .I1(\rd_data0_reg[14]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[14]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[14]_i_5_n_0 ),
        .O(rd_data0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_10 
       (.I0(data5b[30]),
        .I1(data5b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[14]),
        .O(\rd_data0[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_11 
       (.I0(data7b[30]),
        .I1(data7b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[14]),
        .O(\rd_data0[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_12 
       (.I0(data1b[30]),
        .I1(data1b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[14]),
        .O(\rd_data0[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_13 
       (.I0(data3b[30]),
        .I1(data3b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[14]),
        .O(\rd_data0[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_6 
       (.I0(data13b[30]),
        .I1(data13b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[14]),
        .O(\rd_data0[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_7 
       (.I0(data15b[30]),
        .I1(data15b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[14]),
        .O(\rd_data0[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_8 
       (.I0(data9b[30]),
        .I1(data9b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[14]),
        .O(\rd_data0[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[14]_i_9 
       (.I0(data11b[30]),
        .I1(data11b[14]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[30]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[14]),
        .O(\rd_data0[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_1 
       (.I0(\rd_data0_reg[15]_i_2_n_0 ),
        .I1(\rd_data0_reg[15]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[15]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[15]_i_5_n_0 ),
        .O(rd_data0[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_10 
       (.I0(data5b[31]),
        .I1(data5b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[15]),
        .O(\rd_data0[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_11 
       (.I0(data7b[31]),
        .I1(data7b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[15]),
        .O(\rd_data0[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_12 
       (.I0(data1b[31]),
        .I1(data1b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[15]),
        .O(\rd_data0[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_13 
       (.I0(data3b[31]),
        .I1(data3b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[15]),
        .O(\rd_data0[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_6 
       (.I0(data13b[31]),
        .I1(data13b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[15]),
        .O(\rd_data0[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_7 
       (.I0(data15b[31]),
        .I1(data15b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[15]),
        .O(\rd_data0[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_8 
       (.I0(data9b[31]),
        .I1(data9b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[15]),
        .O(\rd_data0[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[15]_i_9 
       (.I0(data11b[31]),
        .I1(data11b[15]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[31]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[15]),
        .O(\rd_data0[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_1 
       (.I0(\rd_data0_reg[1]_i_2_n_0 ),
        .I1(\rd_data0_reg[1]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[1]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[1]_i_5_n_0 ),
        .O(rd_data0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_10 
       (.I0(data5b[17]),
        .I1(data5b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[1]),
        .O(\rd_data0[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_11 
       (.I0(data7b[17]),
        .I1(data7b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[1]),
        .O(\rd_data0[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_12 
       (.I0(data1b[17]),
        .I1(data1b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[1]),
        .O(\rd_data0[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_13 
       (.I0(data3b[17]),
        .I1(data3b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[1]),
        .O(\rd_data0[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_6 
       (.I0(data13b[17]),
        .I1(data13b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[1]),
        .O(\rd_data0[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_7 
       (.I0(data15b[17]),
        .I1(data15b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[1]),
        .O(\rd_data0[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_8 
       (.I0(data9b[17]),
        .I1(data9b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[1]),
        .O(\rd_data0[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[1]_i_9 
       (.I0(data11b[17]),
        .I1(data11b[1]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[17]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[1]),
        .O(\rd_data0[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_1 
       (.I0(\rd_data0_reg[2]_i_2_n_0 ),
        .I1(\rd_data0_reg[2]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[2]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[2]_i_5_n_0 ),
        .O(rd_data0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_10 
       (.I0(data5b[18]),
        .I1(data5b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[2]),
        .O(\rd_data0[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_11 
       (.I0(data7b[18]),
        .I1(data7b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[2]),
        .O(\rd_data0[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_12 
       (.I0(data1b[18]),
        .I1(data1b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[2]),
        .O(\rd_data0[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_13 
       (.I0(data3b[18]),
        .I1(data3b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[2]),
        .O(\rd_data0[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_6 
       (.I0(data13b[18]),
        .I1(data13b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[2]),
        .O(\rd_data0[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_7 
       (.I0(data15b[18]),
        .I1(data15b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[2]),
        .O(\rd_data0[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_8 
       (.I0(data9b[18]),
        .I1(data9b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[2]),
        .O(\rd_data0[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[2]_i_9 
       (.I0(data11b[18]),
        .I1(data11b[2]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[18]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[2]),
        .O(\rd_data0[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_1 
       (.I0(\rd_data0_reg[3]_i_2_n_0 ),
        .I1(\rd_data0_reg[3]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[3]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[3]_i_5_n_0 ),
        .O(rd_data0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_10 
       (.I0(data5b[19]),
        .I1(data5b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[3]),
        .O(\rd_data0[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_11 
       (.I0(data7b[19]),
        .I1(data7b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[3]),
        .O(\rd_data0[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_12 
       (.I0(data1b[19]),
        .I1(data1b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[3]),
        .O(\rd_data0[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_13 
       (.I0(data3b[19]),
        .I1(data3b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[3]),
        .O(\rd_data0[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_6 
       (.I0(data13b[19]),
        .I1(data13b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[3]),
        .O(\rd_data0[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_7 
       (.I0(data15b[19]),
        .I1(data15b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[3]),
        .O(\rd_data0[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_8 
       (.I0(data9b[19]),
        .I1(data9b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[3]),
        .O(\rd_data0[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[3]_i_9 
       (.I0(data11b[19]),
        .I1(data11b[3]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[19]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[3]),
        .O(\rd_data0[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_1 
       (.I0(\rd_data0_reg[4]_i_2_n_0 ),
        .I1(\rd_data0_reg[4]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[4]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[4]_i_5_n_0 ),
        .O(rd_data0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_10 
       (.I0(data5b[20]),
        .I1(data5b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[4]),
        .O(\rd_data0[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_11 
       (.I0(data7b[20]),
        .I1(data7b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[4]),
        .O(\rd_data0[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_12 
       (.I0(data1b[20]),
        .I1(data1b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[4]),
        .O(\rd_data0[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_13 
       (.I0(data3b[20]),
        .I1(data3b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[4]),
        .O(\rd_data0[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_6 
       (.I0(data13b[20]),
        .I1(data13b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[4]),
        .O(\rd_data0[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_7 
       (.I0(data15b[20]),
        .I1(data15b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[4]),
        .O(\rd_data0[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_8 
       (.I0(data9b[20]),
        .I1(data9b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[4]),
        .O(\rd_data0[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[4]_i_9 
       (.I0(data11b[20]),
        .I1(data11b[4]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[20]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[4]),
        .O(\rd_data0[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_1 
       (.I0(\rd_data0_reg[5]_i_2_n_0 ),
        .I1(\rd_data0_reg[5]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[5]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[5]_i_5_n_0 ),
        .O(rd_data0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_10 
       (.I0(data5b[21]),
        .I1(data5b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[5]),
        .O(\rd_data0[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_11 
       (.I0(data7b[21]),
        .I1(data7b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[5]),
        .O(\rd_data0[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_12 
       (.I0(data1b[21]),
        .I1(data1b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[5]),
        .O(\rd_data0[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_13 
       (.I0(data3b[21]),
        .I1(data3b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[5]),
        .O(\rd_data0[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_6 
       (.I0(data13b[21]),
        .I1(data13b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[5]),
        .O(\rd_data0[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_7 
       (.I0(data15b[21]),
        .I1(data15b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[5]),
        .O(\rd_data0[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_8 
       (.I0(data9b[21]),
        .I1(data9b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[5]),
        .O(\rd_data0[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[5]_i_9 
       (.I0(data11b[21]),
        .I1(data11b[5]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[21]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[5]),
        .O(\rd_data0[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_1 
       (.I0(\rd_data0_reg[6]_i_2_n_0 ),
        .I1(\rd_data0_reg[6]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[6]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[6]_i_5_n_0 ),
        .O(rd_data0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_10 
       (.I0(data5b[22]),
        .I1(data5b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[6]),
        .O(\rd_data0[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_11 
       (.I0(data7b[22]),
        .I1(data7b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[6]),
        .O(\rd_data0[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_12 
       (.I0(data1b[22]),
        .I1(data1b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[6]),
        .O(\rd_data0[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_13 
       (.I0(data3b[22]),
        .I1(data3b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[6]),
        .O(\rd_data0[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_6 
       (.I0(data13b[22]),
        .I1(data13b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[6]),
        .O(\rd_data0[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_7 
       (.I0(data15b[22]),
        .I1(data15b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[6]),
        .O(\rd_data0[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_8 
       (.I0(data9b[22]),
        .I1(data9b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[6]),
        .O(\rd_data0[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[6]_i_9 
       (.I0(data11b[22]),
        .I1(data11b[6]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[22]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[6]),
        .O(\rd_data0[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_1 
       (.I0(\rd_data0_reg[7]_i_2_n_0 ),
        .I1(\rd_data0_reg[7]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[7]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[7]_i_5_n_0 ),
        .O(rd_data0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_10 
       (.I0(data5b[23]),
        .I1(data5b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[7]),
        .O(\rd_data0[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_11 
       (.I0(data7b[23]),
        .I1(data7b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[7]),
        .O(\rd_data0[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_12 
       (.I0(data1b[23]),
        .I1(data1b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[7]),
        .O(\rd_data0[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_13 
       (.I0(data3b[23]),
        .I1(data3b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[7]),
        .O(\rd_data0[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_6 
       (.I0(data13b[23]),
        .I1(data13b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[7]),
        .O(\rd_data0[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_7 
       (.I0(data15b[23]),
        .I1(data15b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[7]),
        .O(\rd_data0[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_8 
       (.I0(data9b[23]),
        .I1(data9b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[7]),
        .O(\rd_data0[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[7]_i_9 
       (.I0(data11b[23]),
        .I1(data11b[7]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[23]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[7]),
        .O(\rd_data0[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_1 
       (.I0(\rd_data0_reg[8]_i_2_n_0 ),
        .I1(\rd_data0_reg[8]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[8]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[8]_i_5_n_0 ),
        .O(rd_data0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_10 
       (.I0(data5b[24]),
        .I1(data5b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[8]),
        .O(\rd_data0[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_11 
       (.I0(data7b[24]),
        .I1(data7b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[8]),
        .O(\rd_data0[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_12 
       (.I0(data1b[24]),
        .I1(data1b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[8]),
        .O(\rd_data0[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_13 
       (.I0(data3b[24]),
        .I1(data3b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[8]),
        .O(\rd_data0[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_6 
       (.I0(data13b[24]),
        .I1(data13b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[8]),
        .O(\rd_data0[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_7 
       (.I0(data15b[24]),
        .I1(data15b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[8]),
        .O(\rd_data0[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_8 
       (.I0(data9b[24]),
        .I1(data9b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[8]),
        .O(\rd_data0[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[8]_i_9 
       (.I0(data11b[24]),
        .I1(data11b[8]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[24]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[8]),
        .O(\rd_data0[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_1 
       (.I0(\rd_data0_reg[9]_i_2_n_0 ),
        .I1(\rd_data0_reg[9]_i_3_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\rd_data0_reg[9]_i_4_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\rd_data0_reg[9]_i_5_n_0 ),
        .O(rd_data0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_10 
       (.I0(data5b[25]),
        .I1(data5b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data4b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data4b[9]),
        .O(\rd_data0[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_11 
       (.I0(data7b[25]),
        .I1(data7b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data6b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data6b[9]),
        .O(\rd_data0[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_12 
       (.I0(data1b[25]),
        .I1(data1b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data0b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data0b[9]),
        .O(\rd_data0[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_13 
       (.I0(data3b[25]),
        .I1(data3b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data2b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data2b[9]),
        .O(\rd_data0[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_6 
       (.I0(data13b[25]),
        .I1(data13b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data12b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data12b[9]),
        .O(\rd_data0[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_7 
       (.I0(data15b[25]),
        .I1(data15b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data14b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data14b[9]),
        .O(\rd_data0[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_8 
       (.I0(data9b[25]),
        .I1(data9b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data8b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data8b[9]),
        .O(\rd_data0[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data0[9]_i_9 
       (.I0(data11b[25]),
        .I1(data11b[9]),
        .I2(s_axis_tdata[8]),
        .I3(data10b[25]),
        .I4(s_axis_tdata[0]),
        .I5(data10b[9]),
        .O(\rd_data0[9]_i_9_n_0 ));
  FDRE \rd_data0_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[0]),
        .Q(p_1_in[0]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[0]_i_2 
       (.I0(\rd_data0[0]_i_6_n_0 ),
        .I1(\rd_data0[0]_i_7_n_0 ),
        .O(\rd_data0_reg[0]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[0]_i_3 
       (.I0(\rd_data0[0]_i_8_n_0 ),
        .I1(\rd_data0[0]_i_9_n_0 ),
        .O(\rd_data0_reg[0]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[0]_i_4 
       (.I0(\rd_data0[0]_i_10_n_0 ),
        .I1(\rd_data0[0]_i_11_n_0 ),
        .O(\rd_data0_reg[0]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[0]_i_5 
       (.I0(\rd_data0[0]_i_12_n_0 ),
        .I1(\rd_data0[0]_i_13_n_0 ),
        .O(\rd_data0_reg[0]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[10]),
        .Q(p_1_in[10]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[10]_i_2 
       (.I0(\rd_data0[10]_i_6_n_0 ),
        .I1(\rd_data0[10]_i_7_n_0 ),
        .O(\rd_data0_reg[10]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[10]_i_3 
       (.I0(\rd_data0[10]_i_8_n_0 ),
        .I1(\rd_data0[10]_i_9_n_0 ),
        .O(\rd_data0_reg[10]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[10]_i_4 
       (.I0(\rd_data0[10]_i_10_n_0 ),
        .I1(\rd_data0[10]_i_11_n_0 ),
        .O(\rd_data0_reg[10]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[10]_i_5 
       (.I0(\rd_data0[10]_i_12_n_0 ),
        .I1(\rd_data0[10]_i_13_n_0 ),
        .O(\rd_data0_reg[10]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[11]),
        .Q(p_1_in[11]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[11]_i_2 
       (.I0(\rd_data0[11]_i_6_n_0 ),
        .I1(\rd_data0[11]_i_7_n_0 ),
        .O(\rd_data0_reg[11]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[11]_i_3 
       (.I0(\rd_data0[11]_i_8_n_0 ),
        .I1(\rd_data0[11]_i_9_n_0 ),
        .O(\rd_data0_reg[11]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[11]_i_4 
       (.I0(\rd_data0[11]_i_10_n_0 ),
        .I1(\rd_data0[11]_i_11_n_0 ),
        .O(\rd_data0_reg[11]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[11]_i_5 
       (.I0(\rd_data0[11]_i_12_n_0 ),
        .I1(\rd_data0[11]_i_13_n_0 ),
        .O(\rd_data0_reg[11]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[12]),
        .Q(p_1_in[12]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[12]_i_2 
       (.I0(\rd_data0[12]_i_6_n_0 ),
        .I1(\rd_data0[12]_i_7_n_0 ),
        .O(\rd_data0_reg[12]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[12]_i_3 
       (.I0(\rd_data0[12]_i_8_n_0 ),
        .I1(\rd_data0[12]_i_9_n_0 ),
        .O(\rd_data0_reg[12]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[12]_i_4 
       (.I0(\rd_data0[12]_i_10_n_0 ),
        .I1(\rd_data0[12]_i_11_n_0 ),
        .O(\rd_data0_reg[12]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[12]_i_5 
       (.I0(\rd_data0[12]_i_12_n_0 ),
        .I1(\rd_data0[12]_i_13_n_0 ),
        .O(\rd_data0_reg[12]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[13]),
        .Q(p_1_in[13]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[13]_i_2 
       (.I0(\rd_data0[13]_i_6_n_0 ),
        .I1(\rd_data0[13]_i_7_n_0 ),
        .O(\rd_data0_reg[13]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[13]_i_3 
       (.I0(\rd_data0[13]_i_8_n_0 ),
        .I1(\rd_data0[13]_i_9_n_0 ),
        .O(\rd_data0_reg[13]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[13]_i_4 
       (.I0(\rd_data0[13]_i_10_n_0 ),
        .I1(\rd_data0[13]_i_11_n_0 ),
        .O(\rd_data0_reg[13]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[13]_i_5 
       (.I0(\rd_data0[13]_i_12_n_0 ),
        .I1(\rd_data0[13]_i_13_n_0 ),
        .O(\rd_data0_reg[13]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[14]),
        .Q(p_1_in[14]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[14]_i_2 
       (.I0(\rd_data0[14]_i_6_n_0 ),
        .I1(\rd_data0[14]_i_7_n_0 ),
        .O(\rd_data0_reg[14]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[14]_i_3 
       (.I0(\rd_data0[14]_i_8_n_0 ),
        .I1(\rd_data0[14]_i_9_n_0 ),
        .O(\rd_data0_reg[14]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[14]_i_4 
       (.I0(\rd_data0[14]_i_10_n_0 ),
        .I1(\rd_data0[14]_i_11_n_0 ),
        .O(\rd_data0_reg[14]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[14]_i_5 
       (.I0(\rd_data0[14]_i_12_n_0 ),
        .I1(\rd_data0[14]_i_13_n_0 ),
        .O(\rd_data0_reg[14]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[15]),
        .Q(p_1_in[15]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[15]_i_2 
       (.I0(\rd_data0[15]_i_6_n_0 ),
        .I1(\rd_data0[15]_i_7_n_0 ),
        .O(\rd_data0_reg[15]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[15]_i_3 
       (.I0(\rd_data0[15]_i_8_n_0 ),
        .I1(\rd_data0[15]_i_9_n_0 ),
        .O(\rd_data0_reg[15]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[15]_i_4 
       (.I0(\rd_data0[15]_i_10_n_0 ),
        .I1(\rd_data0[15]_i_11_n_0 ),
        .O(\rd_data0_reg[15]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[15]_i_5 
       (.I0(\rd_data0[15]_i_12_n_0 ),
        .I1(\rd_data0[15]_i_13_n_0 ),
        .O(\rd_data0_reg[15]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[1]),
        .Q(p_1_in[1]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[1]_i_2 
       (.I0(\rd_data0[1]_i_6_n_0 ),
        .I1(\rd_data0[1]_i_7_n_0 ),
        .O(\rd_data0_reg[1]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[1]_i_3 
       (.I0(\rd_data0[1]_i_8_n_0 ),
        .I1(\rd_data0[1]_i_9_n_0 ),
        .O(\rd_data0_reg[1]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[1]_i_4 
       (.I0(\rd_data0[1]_i_10_n_0 ),
        .I1(\rd_data0[1]_i_11_n_0 ),
        .O(\rd_data0_reg[1]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[1]_i_5 
       (.I0(\rd_data0[1]_i_12_n_0 ),
        .I1(\rd_data0[1]_i_13_n_0 ),
        .O(\rd_data0_reg[1]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[2]),
        .Q(p_1_in[2]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[2]_i_2 
       (.I0(\rd_data0[2]_i_6_n_0 ),
        .I1(\rd_data0[2]_i_7_n_0 ),
        .O(\rd_data0_reg[2]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[2]_i_3 
       (.I0(\rd_data0[2]_i_8_n_0 ),
        .I1(\rd_data0[2]_i_9_n_0 ),
        .O(\rd_data0_reg[2]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[2]_i_4 
       (.I0(\rd_data0[2]_i_10_n_0 ),
        .I1(\rd_data0[2]_i_11_n_0 ),
        .O(\rd_data0_reg[2]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[2]_i_5 
       (.I0(\rd_data0[2]_i_12_n_0 ),
        .I1(\rd_data0[2]_i_13_n_0 ),
        .O(\rd_data0_reg[2]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[3]),
        .Q(p_1_in[3]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[3]_i_2 
       (.I0(\rd_data0[3]_i_6_n_0 ),
        .I1(\rd_data0[3]_i_7_n_0 ),
        .O(\rd_data0_reg[3]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[3]_i_3 
       (.I0(\rd_data0[3]_i_8_n_0 ),
        .I1(\rd_data0[3]_i_9_n_0 ),
        .O(\rd_data0_reg[3]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[3]_i_4 
       (.I0(\rd_data0[3]_i_10_n_0 ),
        .I1(\rd_data0[3]_i_11_n_0 ),
        .O(\rd_data0_reg[3]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[3]_i_5 
       (.I0(\rd_data0[3]_i_12_n_0 ),
        .I1(\rd_data0[3]_i_13_n_0 ),
        .O(\rd_data0_reg[3]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[4]),
        .Q(p_1_in[4]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[4]_i_2 
       (.I0(\rd_data0[4]_i_6_n_0 ),
        .I1(\rd_data0[4]_i_7_n_0 ),
        .O(\rd_data0_reg[4]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[4]_i_3 
       (.I0(\rd_data0[4]_i_8_n_0 ),
        .I1(\rd_data0[4]_i_9_n_0 ),
        .O(\rd_data0_reg[4]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[4]_i_4 
       (.I0(\rd_data0[4]_i_10_n_0 ),
        .I1(\rd_data0[4]_i_11_n_0 ),
        .O(\rd_data0_reg[4]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[4]_i_5 
       (.I0(\rd_data0[4]_i_12_n_0 ),
        .I1(\rd_data0[4]_i_13_n_0 ),
        .O(\rd_data0_reg[4]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[5]),
        .Q(p_1_in[5]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[5]_i_2 
       (.I0(\rd_data0[5]_i_6_n_0 ),
        .I1(\rd_data0[5]_i_7_n_0 ),
        .O(\rd_data0_reg[5]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[5]_i_3 
       (.I0(\rd_data0[5]_i_8_n_0 ),
        .I1(\rd_data0[5]_i_9_n_0 ),
        .O(\rd_data0_reg[5]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[5]_i_4 
       (.I0(\rd_data0[5]_i_10_n_0 ),
        .I1(\rd_data0[5]_i_11_n_0 ),
        .O(\rd_data0_reg[5]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[5]_i_5 
       (.I0(\rd_data0[5]_i_12_n_0 ),
        .I1(\rd_data0[5]_i_13_n_0 ),
        .O(\rd_data0_reg[5]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[6]),
        .Q(p_1_in[6]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[6]_i_2 
       (.I0(\rd_data0[6]_i_6_n_0 ),
        .I1(\rd_data0[6]_i_7_n_0 ),
        .O(\rd_data0_reg[6]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[6]_i_3 
       (.I0(\rd_data0[6]_i_8_n_0 ),
        .I1(\rd_data0[6]_i_9_n_0 ),
        .O(\rd_data0_reg[6]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[6]_i_4 
       (.I0(\rd_data0[6]_i_10_n_0 ),
        .I1(\rd_data0[6]_i_11_n_0 ),
        .O(\rd_data0_reg[6]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[6]_i_5 
       (.I0(\rd_data0[6]_i_12_n_0 ),
        .I1(\rd_data0[6]_i_13_n_0 ),
        .O(\rd_data0_reg[6]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[7]),
        .Q(p_1_in[7]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[7]_i_2 
       (.I0(\rd_data0[7]_i_6_n_0 ),
        .I1(\rd_data0[7]_i_7_n_0 ),
        .O(\rd_data0_reg[7]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[7]_i_3 
       (.I0(\rd_data0[7]_i_8_n_0 ),
        .I1(\rd_data0[7]_i_9_n_0 ),
        .O(\rd_data0_reg[7]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[7]_i_4 
       (.I0(\rd_data0[7]_i_10_n_0 ),
        .I1(\rd_data0[7]_i_11_n_0 ),
        .O(\rd_data0_reg[7]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[7]_i_5 
       (.I0(\rd_data0[7]_i_12_n_0 ),
        .I1(\rd_data0[7]_i_13_n_0 ),
        .O(\rd_data0_reg[7]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[8]),
        .Q(p_1_in[8]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[8]_i_2 
       (.I0(\rd_data0[8]_i_6_n_0 ),
        .I1(\rd_data0[8]_i_7_n_0 ),
        .O(\rd_data0_reg[8]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[8]_i_3 
       (.I0(\rd_data0[8]_i_8_n_0 ),
        .I1(\rd_data0[8]_i_9_n_0 ),
        .O(\rd_data0_reg[8]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[8]_i_4 
       (.I0(\rd_data0[8]_i_10_n_0 ),
        .I1(\rd_data0[8]_i_11_n_0 ),
        .O(\rd_data0_reg[8]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[8]_i_5 
       (.I0(\rd_data0[8]_i_12_n_0 ),
        .I1(\rd_data0[8]_i_13_n_0 ),
        .O(\rd_data0_reg[8]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  FDRE \rd_data0_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data0[9]),
        .Q(p_1_in[9]),
        .R(p_0_in));
  MUXF7 \rd_data0_reg[9]_i_2 
       (.I0(\rd_data0[9]_i_6_n_0 ),
        .I1(\rd_data0[9]_i_7_n_0 ),
        .O(\rd_data0_reg[9]_i_2_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[9]_i_3 
       (.I0(\rd_data0[9]_i_8_n_0 ),
        .I1(\rd_data0[9]_i_9_n_0 ),
        .O(\rd_data0_reg[9]_i_3_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[9]_i_4 
       (.I0(\rd_data0[9]_i_10_n_0 ),
        .I1(\rd_data0[9]_i_11_n_0 ),
        .O(\rd_data0_reg[9]_i_4_n_0 ),
        .S(s_axis_tdata[9]));
  MUXF7 \rd_data0_reg[9]_i_5 
       (.I0(\rd_data0[9]_i_12_n_0 ),
        .I1(\rd_data0[9]_i_13_n_0 ),
        .O(\rd_data0_reg[9]_i_5_n_0 ),
        .S(s_axis_tdata[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_1 
       (.I0(\rd_data1_reg[0]_i_2_n_0 ),
        .I1(\rd_data1_reg[0]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[0]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[0]_i_5_n_0 ),
        .O(rd_data1[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_10 
       (.I0(data5a[16]),
        .I1(data5a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[0]),
        .O(\rd_data1[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_11 
       (.I0(data7a[16]),
        .I1(data7a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[0]),
        .O(\rd_data1[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_12 
       (.I0(data1a[16]),
        .I1(data1a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[0]),
        .O(\rd_data1[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_13 
       (.I0(data3a[16]),
        .I1(data3a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[0]),
        .O(\rd_data1[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_6 
       (.I0(data13a[16]),
        .I1(data13a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[0]),
        .O(\rd_data1[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_7 
       (.I0(data15a[16]),
        .I1(data15a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[0]),
        .O(\rd_data1[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_8 
       (.I0(data9a[16]),
        .I1(data9a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[0]),
        .O(\rd_data1[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_9 
       (.I0(data11a[16]),
        .I1(data11a[0]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[16]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[0]),
        .O(\rd_data1[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_1 
       (.I0(\rd_data1_reg[10]_i_2_n_0 ),
        .I1(\rd_data1_reg[10]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[10]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[10]_i_5_n_0 ),
        .O(rd_data1[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_10 
       (.I0(data5a[26]),
        .I1(data5a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[10]),
        .O(\rd_data1[10]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_11 
       (.I0(data7a[26]),
        .I1(data7a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[10]),
        .O(\rd_data1[10]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_12 
       (.I0(data1a[26]),
        .I1(data1a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[10]),
        .O(\rd_data1[10]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_13 
       (.I0(data3a[26]),
        .I1(data3a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[10]),
        .O(\rd_data1[10]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_6 
       (.I0(data13a[26]),
        .I1(data13a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[10]),
        .O(\rd_data1[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_7 
       (.I0(data15a[26]),
        .I1(data15a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[10]),
        .O(\rd_data1[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_8 
       (.I0(data9a[26]),
        .I1(data9a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[10]),
        .O(\rd_data1[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_9 
       (.I0(data11a[26]),
        .I1(data11a[10]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[26]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[10]),
        .O(\rd_data1[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_1 
       (.I0(\rd_data1_reg[11]_i_2_n_0 ),
        .I1(\rd_data1_reg[11]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[11]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[11]_i_5_n_0 ),
        .O(rd_data1[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_10 
       (.I0(data5a[27]),
        .I1(data5a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[11]),
        .O(\rd_data1[11]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_11 
       (.I0(data7a[27]),
        .I1(data7a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[11]),
        .O(\rd_data1[11]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_12 
       (.I0(data1a[27]),
        .I1(data1a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[11]),
        .O(\rd_data1[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_13 
       (.I0(data3a[27]),
        .I1(data3a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[11]),
        .O(\rd_data1[11]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_6 
       (.I0(data13a[27]),
        .I1(data13a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[11]),
        .O(\rd_data1[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_7 
       (.I0(data15a[27]),
        .I1(data15a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[11]),
        .O(\rd_data1[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_8 
       (.I0(data9a[27]),
        .I1(data9a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[11]),
        .O(\rd_data1[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_9 
       (.I0(data11a[27]),
        .I1(data11a[11]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[27]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[11]),
        .O(\rd_data1[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_1 
       (.I0(\rd_data1_reg[12]_i_2_n_0 ),
        .I1(\rd_data1_reg[12]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[12]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[12]_i_5_n_0 ),
        .O(rd_data1[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_10 
       (.I0(data5a[28]),
        .I1(data5a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[12]),
        .O(\rd_data1[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_11 
       (.I0(data7a[28]),
        .I1(data7a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[12]),
        .O(\rd_data1[12]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_12 
       (.I0(data1a[28]),
        .I1(data1a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[12]),
        .O(\rd_data1[12]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_13 
       (.I0(data3a[28]),
        .I1(data3a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[12]),
        .O(\rd_data1[12]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_6 
       (.I0(data13a[28]),
        .I1(data13a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[12]),
        .O(\rd_data1[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_7 
       (.I0(data15a[28]),
        .I1(data15a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[12]),
        .O(\rd_data1[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_8 
       (.I0(data9a[28]),
        .I1(data9a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[12]),
        .O(\rd_data1[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_9 
       (.I0(data11a[28]),
        .I1(data11a[12]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[28]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[12]),
        .O(\rd_data1[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_1 
       (.I0(\rd_data1_reg[13]_i_2_n_0 ),
        .I1(\rd_data1_reg[13]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[13]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[13]_i_5_n_0 ),
        .O(rd_data1[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_10 
       (.I0(data5a[29]),
        .I1(data5a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[13]),
        .O(\rd_data1[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_11 
       (.I0(data7a[29]),
        .I1(data7a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[13]),
        .O(\rd_data1[13]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_12 
       (.I0(data1a[29]),
        .I1(data1a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[13]),
        .O(\rd_data1[13]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_13 
       (.I0(data3a[29]),
        .I1(data3a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[13]),
        .O(\rd_data1[13]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_6 
       (.I0(data13a[29]),
        .I1(data13a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[13]),
        .O(\rd_data1[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_7 
       (.I0(data15a[29]),
        .I1(data15a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[13]),
        .O(\rd_data1[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_8 
       (.I0(data9a[29]),
        .I1(data9a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[13]),
        .O(\rd_data1[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_9 
       (.I0(data11a[29]),
        .I1(data11a[13]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[29]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[13]),
        .O(\rd_data1[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_1 
       (.I0(\rd_data1_reg[14]_i_2_n_0 ),
        .I1(\rd_data1_reg[14]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[14]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[14]_i_5_n_0 ),
        .O(rd_data1[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_10 
       (.I0(data5a[30]),
        .I1(data5a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[14]),
        .O(\rd_data1[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_11 
       (.I0(data7a[30]),
        .I1(data7a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[14]),
        .O(\rd_data1[14]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_12 
       (.I0(data1a[30]),
        .I1(data1a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[14]),
        .O(\rd_data1[14]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_13 
       (.I0(data3a[30]),
        .I1(data3a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[14]),
        .O(\rd_data1[14]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_6 
       (.I0(data13a[30]),
        .I1(data13a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[14]),
        .O(\rd_data1[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_7 
       (.I0(data15a[30]),
        .I1(data15a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[14]),
        .O(\rd_data1[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_8 
       (.I0(data9a[30]),
        .I1(data9a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[14]),
        .O(\rd_data1[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_9 
       (.I0(data11a[30]),
        .I1(data11a[14]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[30]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[14]),
        .O(\rd_data1[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_1 
       (.I0(\rd_data1_reg[15]_i_2_n_0 ),
        .I1(\rd_data1_reg[15]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[15]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[15]_i_5_n_0 ),
        .O(rd_data1[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_10 
       (.I0(data5a[31]),
        .I1(data5a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[15]),
        .O(\rd_data1[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_11 
       (.I0(data7a[31]),
        .I1(data7a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[15]),
        .O(\rd_data1[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_12 
       (.I0(data1a[31]),
        .I1(data1a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[15]),
        .O(\rd_data1[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_13 
       (.I0(data3a[31]),
        .I1(data3a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[15]),
        .O(\rd_data1[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_6 
       (.I0(data13a[31]),
        .I1(data13a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[15]),
        .O(\rd_data1[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_7 
       (.I0(data15a[31]),
        .I1(data15a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[15]),
        .O(\rd_data1[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_8 
       (.I0(data9a[31]),
        .I1(data9a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[15]),
        .O(\rd_data1[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_9 
       (.I0(data11a[31]),
        .I1(data11a[15]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[31]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[15]),
        .O(\rd_data1[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_1 
       (.I0(\rd_data1_reg[1]_i_2_n_0 ),
        .I1(\rd_data1_reg[1]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[1]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[1]_i_5_n_0 ),
        .O(rd_data1[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_10 
       (.I0(data5a[17]),
        .I1(data5a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[1]),
        .O(\rd_data1[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_11 
       (.I0(data7a[17]),
        .I1(data7a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[1]),
        .O(\rd_data1[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_12 
       (.I0(data1a[17]),
        .I1(data1a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[1]),
        .O(\rd_data1[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_13 
       (.I0(data3a[17]),
        .I1(data3a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[1]),
        .O(\rd_data1[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_6 
       (.I0(data13a[17]),
        .I1(data13a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[1]),
        .O(\rd_data1[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_7 
       (.I0(data15a[17]),
        .I1(data15a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[1]),
        .O(\rd_data1[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_8 
       (.I0(data9a[17]),
        .I1(data9a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[1]),
        .O(\rd_data1[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_9 
       (.I0(data11a[17]),
        .I1(data11a[1]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[17]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[1]),
        .O(\rd_data1[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_1 
       (.I0(\rd_data1_reg[2]_i_2_n_0 ),
        .I1(\rd_data1_reg[2]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[2]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[2]_i_5_n_0 ),
        .O(rd_data1[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_10 
       (.I0(data5a[18]),
        .I1(data5a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[2]),
        .O(\rd_data1[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_11 
       (.I0(data7a[18]),
        .I1(data7a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[2]),
        .O(\rd_data1[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_12 
       (.I0(data1a[18]),
        .I1(data1a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[2]),
        .O(\rd_data1[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_13 
       (.I0(data3a[18]),
        .I1(data3a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[2]),
        .O(\rd_data1[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_6 
       (.I0(data13a[18]),
        .I1(data13a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[2]),
        .O(\rd_data1[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_7 
       (.I0(data15a[18]),
        .I1(data15a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[2]),
        .O(\rd_data1[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_8 
       (.I0(data9a[18]),
        .I1(data9a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[2]),
        .O(\rd_data1[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_9 
       (.I0(data11a[18]),
        .I1(data11a[2]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[18]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[2]),
        .O(\rd_data1[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_1 
       (.I0(\rd_data1_reg[3]_i_2_n_0 ),
        .I1(\rd_data1_reg[3]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[3]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[3]_i_5_n_0 ),
        .O(rd_data1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_10 
       (.I0(data5a[19]),
        .I1(data5a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[3]),
        .O(\rd_data1[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_11 
       (.I0(data7a[19]),
        .I1(data7a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[3]),
        .O(\rd_data1[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_12 
       (.I0(data1a[19]),
        .I1(data1a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[3]),
        .O(\rd_data1[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_13 
       (.I0(data3a[19]),
        .I1(data3a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[3]),
        .O(\rd_data1[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_6 
       (.I0(data13a[19]),
        .I1(data13a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[3]),
        .O(\rd_data1[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_7 
       (.I0(data15a[19]),
        .I1(data15a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[3]),
        .O(\rd_data1[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_8 
       (.I0(data9a[19]),
        .I1(data9a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[3]),
        .O(\rd_data1[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_9 
       (.I0(data11a[19]),
        .I1(data11a[3]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[19]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[3]),
        .O(\rd_data1[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_1 
       (.I0(\rd_data1_reg[4]_i_2_n_0 ),
        .I1(\rd_data1_reg[4]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[4]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[4]_i_5_n_0 ),
        .O(rd_data1[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_10 
       (.I0(data5a[20]),
        .I1(data5a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[4]),
        .O(\rd_data1[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_11 
       (.I0(data7a[20]),
        .I1(data7a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[4]),
        .O(\rd_data1[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_12 
       (.I0(data1a[20]),
        .I1(data1a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[4]),
        .O(\rd_data1[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_13 
       (.I0(data3a[20]),
        .I1(data3a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[4]),
        .O(\rd_data1[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_6 
       (.I0(data13a[20]),
        .I1(data13a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[4]),
        .O(\rd_data1[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_7 
       (.I0(data15a[20]),
        .I1(data15a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[4]),
        .O(\rd_data1[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_8 
       (.I0(data9a[20]),
        .I1(data9a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[4]),
        .O(\rd_data1[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_9 
       (.I0(data11a[20]),
        .I1(data11a[4]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[20]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[4]),
        .O(\rd_data1[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_1 
       (.I0(\rd_data1_reg[5]_i_2_n_0 ),
        .I1(\rd_data1_reg[5]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[5]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[5]_i_5_n_0 ),
        .O(rd_data1[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_10 
       (.I0(data5a[21]),
        .I1(data5a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[5]),
        .O(\rd_data1[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_11 
       (.I0(data7a[21]),
        .I1(data7a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[5]),
        .O(\rd_data1[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_12 
       (.I0(data1a[21]),
        .I1(data1a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[5]),
        .O(\rd_data1[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_13 
       (.I0(data3a[21]),
        .I1(data3a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[5]),
        .O(\rd_data1[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_6 
       (.I0(data13a[21]),
        .I1(data13a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[5]),
        .O(\rd_data1[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_7 
       (.I0(data15a[21]),
        .I1(data15a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[5]),
        .O(\rd_data1[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_8 
       (.I0(data9a[21]),
        .I1(data9a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[5]),
        .O(\rd_data1[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_9 
       (.I0(data11a[21]),
        .I1(data11a[5]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[21]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[5]),
        .O(\rd_data1[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_1 
       (.I0(\rd_data1_reg[6]_i_2_n_0 ),
        .I1(\rd_data1_reg[6]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[6]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[6]_i_5_n_0 ),
        .O(rd_data1[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_10 
       (.I0(data5a[22]),
        .I1(data5a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[6]),
        .O(\rd_data1[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_11 
       (.I0(data7a[22]),
        .I1(data7a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[6]),
        .O(\rd_data1[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_12 
       (.I0(data1a[22]),
        .I1(data1a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[6]),
        .O(\rd_data1[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_13 
       (.I0(data3a[22]),
        .I1(data3a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[6]),
        .O(\rd_data1[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_6 
       (.I0(data13a[22]),
        .I1(data13a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[6]),
        .O(\rd_data1[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_7 
       (.I0(data15a[22]),
        .I1(data15a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[6]),
        .O(\rd_data1[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_8 
       (.I0(data9a[22]),
        .I1(data9a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[6]),
        .O(\rd_data1[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_9 
       (.I0(data11a[22]),
        .I1(data11a[6]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[22]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[6]),
        .O(\rd_data1[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_1 
       (.I0(\rd_data1_reg[7]_i_2_n_0 ),
        .I1(\rd_data1_reg[7]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[7]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[7]_i_5_n_0 ),
        .O(rd_data1[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_10 
       (.I0(data5a[23]),
        .I1(data5a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[7]),
        .O(\rd_data1[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_11 
       (.I0(data7a[23]),
        .I1(data7a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[7]),
        .O(\rd_data1[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_12 
       (.I0(data1a[23]),
        .I1(data1a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[7]),
        .O(\rd_data1[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_13 
       (.I0(data3a[23]),
        .I1(data3a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[7]),
        .O(\rd_data1[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_6 
       (.I0(data13a[23]),
        .I1(data13a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[7]),
        .O(\rd_data1[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_7 
       (.I0(data15a[23]),
        .I1(data15a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[7]),
        .O(\rd_data1[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_8 
       (.I0(data9a[23]),
        .I1(data9a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[7]),
        .O(\rd_data1[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_9 
       (.I0(data11a[23]),
        .I1(data11a[7]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[23]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[7]),
        .O(\rd_data1[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_1 
       (.I0(\rd_data1_reg[8]_i_2_n_0 ),
        .I1(\rd_data1_reg[8]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[8]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[8]_i_5_n_0 ),
        .O(rd_data1[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_10 
       (.I0(data5a[24]),
        .I1(data5a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[8]),
        .O(\rd_data1[8]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_11 
       (.I0(data7a[24]),
        .I1(data7a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[8]),
        .O(\rd_data1[8]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_12 
       (.I0(data1a[24]),
        .I1(data1a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[8]),
        .O(\rd_data1[8]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_13 
       (.I0(data3a[24]),
        .I1(data3a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[8]),
        .O(\rd_data1[8]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_6 
       (.I0(data13a[24]),
        .I1(data13a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[8]),
        .O(\rd_data1[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_7 
       (.I0(data15a[24]),
        .I1(data15a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[8]),
        .O(\rd_data1[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_8 
       (.I0(data9a[24]),
        .I1(data9a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[8]),
        .O(\rd_data1[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_9 
       (.I0(data11a[24]),
        .I1(data11a[8]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[24]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[8]),
        .O(\rd_data1[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_1 
       (.I0(\rd_data1_reg[9]_i_2_n_0 ),
        .I1(\rd_data1_reg[9]_i_3_n_0 ),
        .I2(s_axis_tdata[23]),
        .I3(\rd_data1_reg[9]_i_4_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\rd_data1_reg[9]_i_5_n_0 ),
        .O(rd_data1[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_10 
       (.I0(data5a[25]),
        .I1(data5a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data4a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data4a[9]),
        .O(\rd_data1[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_11 
       (.I0(data7a[25]),
        .I1(data7a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data6a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data6a[9]),
        .O(\rd_data1[9]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_12 
       (.I0(data1a[25]),
        .I1(data1a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data0a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data0a[9]),
        .O(\rd_data1[9]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_13 
       (.I0(data3a[25]),
        .I1(data3a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data2a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data2a[9]),
        .O(\rd_data1[9]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_6 
       (.I0(data13a[25]),
        .I1(data13a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data12a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data12a[9]),
        .O(\rd_data1[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_7 
       (.I0(data15a[25]),
        .I1(data15a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data14a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data14a[9]),
        .O(\rd_data1[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_8 
       (.I0(data9a[25]),
        .I1(data9a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data8a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data8a[9]),
        .O(\rd_data1[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_9 
       (.I0(data11a[25]),
        .I1(data11a[9]),
        .I2(s_axis_tdata[20]),
        .I3(data10a[25]),
        .I4(s_axis_tdata[12]),
        .I5(data10a[9]),
        .O(\rd_data1[9]_i_9_n_0 ));
  FDRE \rd_data1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[0]),
        .Q(p_1_in[16]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[0]_i_2 
       (.I0(\rd_data1[0]_i_6_n_0 ),
        .I1(\rd_data1[0]_i_7_n_0 ),
        .O(\rd_data1_reg[0]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[0]_i_3 
       (.I0(\rd_data1[0]_i_8_n_0 ),
        .I1(\rd_data1[0]_i_9_n_0 ),
        .O(\rd_data1_reg[0]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[0]_i_4 
       (.I0(\rd_data1[0]_i_10_n_0 ),
        .I1(\rd_data1[0]_i_11_n_0 ),
        .O(\rd_data1_reg[0]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[0]_i_5 
       (.I0(\rd_data1[0]_i_12_n_0 ),
        .I1(\rd_data1[0]_i_13_n_0 ),
        .O(\rd_data1_reg[0]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[10]),
        .Q(p_1_in[26]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[10]_i_2 
       (.I0(\rd_data1[10]_i_6_n_0 ),
        .I1(\rd_data1[10]_i_7_n_0 ),
        .O(\rd_data1_reg[10]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[10]_i_3 
       (.I0(\rd_data1[10]_i_8_n_0 ),
        .I1(\rd_data1[10]_i_9_n_0 ),
        .O(\rd_data1_reg[10]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[10]_i_4 
       (.I0(\rd_data1[10]_i_10_n_0 ),
        .I1(\rd_data1[10]_i_11_n_0 ),
        .O(\rd_data1_reg[10]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[10]_i_5 
       (.I0(\rd_data1[10]_i_12_n_0 ),
        .I1(\rd_data1[10]_i_13_n_0 ),
        .O(\rd_data1_reg[10]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[11]),
        .Q(p_1_in[27]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[11]_i_2 
       (.I0(\rd_data1[11]_i_6_n_0 ),
        .I1(\rd_data1[11]_i_7_n_0 ),
        .O(\rd_data1_reg[11]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[11]_i_3 
       (.I0(\rd_data1[11]_i_8_n_0 ),
        .I1(\rd_data1[11]_i_9_n_0 ),
        .O(\rd_data1_reg[11]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[11]_i_4 
       (.I0(\rd_data1[11]_i_10_n_0 ),
        .I1(\rd_data1[11]_i_11_n_0 ),
        .O(\rd_data1_reg[11]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[11]_i_5 
       (.I0(\rd_data1[11]_i_12_n_0 ),
        .I1(\rd_data1[11]_i_13_n_0 ),
        .O(\rd_data1_reg[11]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[12]),
        .Q(p_1_in[28]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[12]_i_2 
       (.I0(\rd_data1[12]_i_6_n_0 ),
        .I1(\rd_data1[12]_i_7_n_0 ),
        .O(\rd_data1_reg[12]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[12]_i_3 
       (.I0(\rd_data1[12]_i_8_n_0 ),
        .I1(\rd_data1[12]_i_9_n_0 ),
        .O(\rd_data1_reg[12]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[12]_i_4 
       (.I0(\rd_data1[12]_i_10_n_0 ),
        .I1(\rd_data1[12]_i_11_n_0 ),
        .O(\rd_data1_reg[12]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[12]_i_5 
       (.I0(\rd_data1[12]_i_12_n_0 ),
        .I1(\rd_data1[12]_i_13_n_0 ),
        .O(\rd_data1_reg[12]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[13]),
        .Q(p_1_in[29]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[13]_i_2 
       (.I0(\rd_data1[13]_i_6_n_0 ),
        .I1(\rd_data1[13]_i_7_n_0 ),
        .O(\rd_data1_reg[13]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[13]_i_3 
       (.I0(\rd_data1[13]_i_8_n_0 ),
        .I1(\rd_data1[13]_i_9_n_0 ),
        .O(\rd_data1_reg[13]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[13]_i_4 
       (.I0(\rd_data1[13]_i_10_n_0 ),
        .I1(\rd_data1[13]_i_11_n_0 ),
        .O(\rd_data1_reg[13]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[13]_i_5 
       (.I0(\rd_data1[13]_i_12_n_0 ),
        .I1(\rd_data1[13]_i_13_n_0 ),
        .O(\rd_data1_reg[13]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[14]),
        .Q(p_1_in[30]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[14]_i_2 
       (.I0(\rd_data1[14]_i_6_n_0 ),
        .I1(\rd_data1[14]_i_7_n_0 ),
        .O(\rd_data1_reg[14]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[14]_i_3 
       (.I0(\rd_data1[14]_i_8_n_0 ),
        .I1(\rd_data1[14]_i_9_n_0 ),
        .O(\rd_data1_reg[14]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[14]_i_4 
       (.I0(\rd_data1[14]_i_10_n_0 ),
        .I1(\rd_data1[14]_i_11_n_0 ),
        .O(\rd_data1_reg[14]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[14]_i_5 
       (.I0(\rd_data1[14]_i_12_n_0 ),
        .I1(\rd_data1[14]_i_13_n_0 ),
        .O(\rd_data1_reg[14]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[15]),
        .Q(p_1_in[31]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[15]_i_2 
       (.I0(\rd_data1[15]_i_6_n_0 ),
        .I1(\rd_data1[15]_i_7_n_0 ),
        .O(\rd_data1_reg[15]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[15]_i_3 
       (.I0(\rd_data1[15]_i_8_n_0 ),
        .I1(\rd_data1[15]_i_9_n_0 ),
        .O(\rd_data1_reg[15]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[15]_i_4 
       (.I0(\rd_data1[15]_i_10_n_0 ),
        .I1(\rd_data1[15]_i_11_n_0 ),
        .O(\rd_data1_reg[15]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[15]_i_5 
       (.I0(\rd_data1[15]_i_12_n_0 ),
        .I1(\rd_data1[15]_i_13_n_0 ),
        .O(\rd_data1_reg[15]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[1]),
        .Q(p_1_in[17]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[1]_i_2 
       (.I0(\rd_data1[1]_i_6_n_0 ),
        .I1(\rd_data1[1]_i_7_n_0 ),
        .O(\rd_data1_reg[1]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[1]_i_3 
       (.I0(\rd_data1[1]_i_8_n_0 ),
        .I1(\rd_data1[1]_i_9_n_0 ),
        .O(\rd_data1_reg[1]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[1]_i_4 
       (.I0(\rd_data1[1]_i_10_n_0 ),
        .I1(\rd_data1[1]_i_11_n_0 ),
        .O(\rd_data1_reg[1]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[1]_i_5 
       (.I0(\rd_data1[1]_i_12_n_0 ),
        .I1(\rd_data1[1]_i_13_n_0 ),
        .O(\rd_data1_reg[1]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[2]),
        .Q(p_1_in[18]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[2]_i_2 
       (.I0(\rd_data1[2]_i_6_n_0 ),
        .I1(\rd_data1[2]_i_7_n_0 ),
        .O(\rd_data1_reg[2]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[2]_i_3 
       (.I0(\rd_data1[2]_i_8_n_0 ),
        .I1(\rd_data1[2]_i_9_n_0 ),
        .O(\rd_data1_reg[2]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[2]_i_4 
       (.I0(\rd_data1[2]_i_10_n_0 ),
        .I1(\rd_data1[2]_i_11_n_0 ),
        .O(\rd_data1_reg[2]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[2]_i_5 
       (.I0(\rd_data1[2]_i_12_n_0 ),
        .I1(\rd_data1[2]_i_13_n_0 ),
        .O(\rd_data1_reg[2]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[3]),
        .Q(p_1_in[19]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[3]_i_2 
       (.I0(\rd_data1[3]_i_6_n_0 ),
        .I1(\rd_data1[3]_i_7_n_0 ),
        .O(\rd_data1_reg[3]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[3]_i_3 
       (.I0(\rd_data1[3]_i_8_n_0 ),
        .I1(\rd_data1[3]_i_9_n_0 ),
        .O(\rd_data1_reg[3]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[3]_i_4 
       (.I0(\rd_data1[3]_i_10_n_0 ),
        .I1(\rd_data1[3]_i_11_n_0 ),
        .O(\rd_data1_reg[3]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[3]_i_5 
       (.I0(\rd_data1[3]_i_12_n_0 ),
        .I1(\rd_data1[3]_i_13_n_0 ),
        .O(\rd_data1_reg[3]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[4]),
        .Q(p_1_in[20]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[4]_i_2 
       (.I0(\rd_data1[4]_i_6_n_0 ),
        .I1(\rd_data1[4]_i_7_n_0 ),
        .O(\rd_data1_reg[4]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[4]_i_3 
       (.I0(\rd_data1[4]_i_8_n_0 ),
        .I1(\rd_data1[4]_i_9_n_0 ),
        .O(\rd_data1_reg[4]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[4]_i_4 
       (.I0(\rd_data1[4]_i_10_n_0 ),
        .I1(\rd_data1[4]_i_11_n_0 ),
        .O(\rd_data1_reg[4]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[4]_i_5 
       (.I0(\rd_data1[4]_i_12_n_0 ),
        .I1(\rd_data1[4]_i_13_n_0 ),
        .O(\rd_data1_reg[4]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[5]),
        .Q(p_1_in[21]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[5]_i_2 
       (.I0(\rd_data1[5]_i_6_n_0 ),
        .I1(\rd_data1[5]_i_7_n_0 ),
        .O(\rd_data1_reg[5]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[5]_i_3 
       (.I0(\rd_data1[5]_i_8_n_0 ),
        .I1(\rd_data1[5]_i_9_n_0 ),
        .O(\rd_data1_reg[5]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[5]_i_4 
       (.I0(\rd_data1[5]_i_10_n_0 ),
        .I1(\rd_data1[5]_i_11_n_0 ),
        .O(\rd_data1_reg[5]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[5]_i_5 
       (.I0(\rd_data1[5]_i_12_n_0 ),
        .I1(\rd_data1[5]_i_13_n_0 ),
        .O(\rd_data1_reg[5]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[6]),
        .Q(p_1_in[22]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[6]_i_2 
       (.I0(\rd_data1[6]_i_6_n_0 ),
        .I1(\rd_data1[6]_i_7_n_0 ),
        .O(\rd_data1_reg[6]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[6]_i_3 
       (.I0(\rd_data1[6]_i_8_n_0 ),
        .I1(\rd_data1[6]_i_9_n_0 ),
        .O(\rd_data1_reg[6]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[6]_i_4 
       (.I0(\rd_data1[6]_i_10_n_0 ),
        .I1(\rd_data1[6]_i_11_n_0 ),
        .O(\rd_data1_reg[6]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[6]_i_5 
       (.I0(\rd_data1[6]_i_12_n_0 ),
        .I1(\rd_data1[6]_i_13_n_0 ),
        .O(\rd_data1_reg[6]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[7]),
        .Q(p_1_in[23]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[7]_i_2 
       (.I0(\rd_data1[7]_i_6_n_0 ),
        .I1(\rd_data1[7]_i_7_n_0 ),
        .O(\rd_data1_reg[7]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[7]_i_3 
       (.I0(\rd_data1[7]_i_8_n_0 ),
        .I1(\rd_data1[7]_i_9_n_0 ),
        .O(\rd_data1_reg[7]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[7]_i_4 
       (.I0(\rd_data1[7]_i_10_n_0 ),
        .I1(\rd_data1[7]_i_11_n_0 ),
        .O(\rd_data1_reg[7]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[7]_i_5 
       (.I0(\rd_data1[7]_i_12_n_0 ),
        .I1(\rd_data1[7]_i_13_n_0 ),
        .O(\rd_data1_reg[7]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[8]),
        .Q(p_1_in[24]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[8]_i_2 
       (.I0(\rd_data1[8]_i_6_n_0 ),
        .I1(\rd_data1[8]_i_7_n_0 ),
        .O(\rd_data1_reg[8]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[8]_i_3 
       (.I0(\rd_data1[8]_i_8_n_0 ),
        .I1(\rd_data1[8]_i_9_n_0 ),
        .O(\rd_data1_reg[8]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[8]_i_4 
       (.I0(\rd_data1[8]_i_10_n_0 ),
        .I1(\rd_data1[8]_i_11_n_0 ),
        .O(\rd_data1_reg[8]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[8]_i_5 
       (.I0(\rd_data1[8]_i_12_n_0 ),
        .I1(\rd_data1[8]_i_13_n_0 ),
        .O(\rd_data1_reg[8]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  FDRE \rd_data1_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(rd_data1[9]),
        .Q(p_1_in[25]),
        .R(p_0_in));
  MUXF7 \rd_data1_reg[9]_i_2 
       (.I0(\rd_data1[9]_i_6_n_0 ),
        .I1(\rd_data1[9]_i_7_n_0 ),
        .O(\rd_data1_reg[9]_i_2_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[9]_i_3 
       (.I0(\rd_data1[9]_i_8_n_0 ),
        .I1(\rd_data1[9]_i_9_n_0 ),
        .O(\rd_data1_reg[9]_i_3_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[9]_i_4 
       (.I0(\rd_data1[9]_i_10_n_0 ),
        .I1(\rd_data1[9]_i_11_n_0 ),
        .O(\rd_data1_reg[9]_i_4_n_0 ),
        .S(s_axis_tdata[21]));
  MUXF7 \rd_data1_reg[9]_i_5 
       (.I0(\rd_data1[9]_i_12_n_0 ),
        .I1(\rd_data1[9]_i_13_n_0 ),
        .O(\rd_data1_reg[9]_i_5_n_0 ),
        .S(s_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axis_tready_i_1
       (.I0(m_axis_tready_bf),
        .I1(rstn),
        .I2(s_axis_tready),
        .O(s_axis_tready_i_1_n_0));
  FDRE s_axis_tready_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tready_i_1_n_0),
        .Q(s_axis_tready),
        .R(1'b0));
  FDRE s_axis_tvalid_bf_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axis_tvalid),
        .Q(s_axis_tvalid_bf),
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
