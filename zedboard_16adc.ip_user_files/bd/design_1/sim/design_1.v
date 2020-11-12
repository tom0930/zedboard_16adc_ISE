//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Oct 14 14:16:20 2020
//Host        : DESKTOP-U60VC6L running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=44,numReposBlks=43,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=5,numPkgbdBlks=0,bdsource=USER,da_ps7_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    link0_data_in,
    link0_data_out);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;
  input link0_data_in;
  output [0:0]link0_data_out;

  wire [13:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_1_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_1_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_1_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_1_BRAM_PORTA_EN;
  wire axi_bram_ctrl_1_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_1_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_2_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_2_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_2_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_2_BRAM_PORTA_EN;
  wire axi_bram_ctrl_2_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_2_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_3_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_3_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_3_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_3_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_3_BRAM_PORTA_EN;
  wire axi_bram_ctrl_3_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_3_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_4_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_4_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_4_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_4_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_4_BRAM_PORTA_EN;
  wire axi_bram_ctrl_4_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_4_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_5_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_5_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_5_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_5_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_5_BRAM_PORTA_EN;
  wire axi_bram_ctrl_5_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_5_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_6_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_6_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_6_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_6_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_6_BRAM_PORTA_EN;
  wire axi_bram_ctrl_6_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_6_BRAM_PORTA_WE;
  wire [13:0]axi_bram_ctrl_7_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_7_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_7_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_7_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_7_BRAM_PORTA_EN;
  wire axi_bram_ctrl_7_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_7_BRAM_PORTA_WE;
  wire [0:0]axi_gpio_0_gpio_io_o;
  wire [0:0]axi_gpio_2_gpio_io_o;
  wire [0:0]axi_gpio_4_gpio_io_o;
  wire [0:0]axi_gpio_6_gpio_io_o;
  wire data_in_1;
  wire [0:0]link0_data_out1;
  wire [14:0]processing_system7_0_DDR_ADDR;
  wire [2:0]processing_system7_0_DDR_BA;
  wire processing_system7_0_DDR_CAS_N;
  wire processing_system7_0_DDR_CKE;
  wire processing_system7_0_DDR_CK_N;
  wire processing_system7_0_DDR_CK_P;
  wire processing_system7_0_DDR_CS_N;
  wire [3:0]processing_system7_0_DDR_DM;
  wire [31:0]processing_system7_0_DDR_DQ;
  wire [3:0]processing_system7_0_DDR_DQS_N;
  wire [3:0]processing_system7_0_DDR_DQS_P;
  wire processing_system7_0_DDR_ODT;
  wire processing_system7_0_DDR_RAS_N;
  wire processing_system7_0_DDR_RESET_N;
  wire processing_system7_0_DDR_WE_N;
  wire processing_system7_0_FCLK_CLK0;
  wire [0:0]processing_system7_0_FCLK_RESET0_N;
  wire processing_system7_0_FCLK_RESET0_N1;
  wire processing_system7_0_FIXED_IO_DDR_VRN;
  wire processing_system7_0_FIXED_IO_DDR_VRP;
  wire [53:0]processing_system7_0_FIXED_IO_MIO;
  wire processing_system7_0_FIXED_IO_PS_CLK;
  wire processing_system7_0_FIXED_IO_PS_PORB;
  wire processing_system7_0_FIXED_IO_PS_SRSTB;
  wire [31:0]processing_system7_0_M_AXI_GP0_ARADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_ARID;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_ARLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_ARQOS;
  wire processing_system7_0_M_AXI_GP0_ARREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_ARSIZE;
  wire processing_system7_0_M_AXI_GP0_ARVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_AWADDR;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWBURST;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWCACHE;
  wire [11:0]processing_system7_0_M_AXI_GP0_AWID;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWLEN;
  wire [1:0]processing_system7_0_M_AXI_GP0_AWLOCK;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWPROT;
  wire [3:0]processing_system7_0_M_AXI_GP0_AWQOS;
  wire processing_system7_0_M_AXI_GP0_AWREADY;
  wire [2:0]processing_system7_0_M_AXI_GP0_AWSIZE;
  wire processing_system7_0_M_AXI_GP0_AWVALID;
  wire [11:0]processing_system7_0_M_AXI_GP0_BID;
  wire processing_system7_0_M_AXI_GP0_BREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_BRESP;
  wire processing_system7_0_M_AXI_GP0_BVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_RDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_RID;
  wire processing_system7_0_M_AXI_GP0_RLAST;
  wire processing_system7_0_M_AXI_GP0_RREADY;
  wire [1:0]processing_system7_0_M_AXI_GP0_RRESP;
  wire processing_system7_0_M_AXI_GP0_RVALID;
  wire [31:0]processing_system7_0_M_AXI_GP0_WDATA;
  wire [11:0]processing_system7_0_M_AXI_GP0_WID;
  wire processing_system7_0_M_AXI_GP0_WLAST;
  wire processing_system7_0_M_AXI_GP0_WREADY;
  wire [3:0]processing_system7_0_M_AXI_GP0_WSTRB;
  wire processing_system7_0_M_AXI_GP0_WVALID;
  wire [13:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [13:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [31:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [31:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [3:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [13:0]smartconnect_0_M01_AXI_ARADDR;
  wire [1:0]smartconnect_0_M01_AXI_ARBURST;
  wire [3:0]smartconnect_0_M01_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M01_AXI_ARLEN;
  wire [0:0]smartconnect_0_M01_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M01_AXI_ARPROT;
  wire smartconnect_0_M01_AXI_ARREADY;
  wire [2:0]smartconnect_0_M01_AXI_ARSIZE;
  wire smartconnect_0_M01_AXI_ARVALID;
  wire [13:0]smartconnect_0_M01_AXI_AWADDR;
  wire [1:0]smartconnect_0_M01_AXI_AWBURST;
  wire [3:0]smartconnect_0_M01_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M01_AXI_AWLEN;
  wire [0:0]smartconnect_0_M01_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M01_AXI_AWPROT;
  wire smartconnect_0_M01_AXI_AWREADY;
  wire [2:0]smartconnect_0_M01_AXI_AWSIZE;
  wire smartconnect_0_M01_AXI_AWVALID;
  wire smartconnect_0_M01_AXI_BREADY;
  wire [1:0]smartconnect_0_M01_AXI_BRESP;
  wire smartconnect_0_M01_AXI_BVALID;
  wire [31:0]smartconnect_0_M01_AXI_RDATA;
  wire smartconnect_0_M01_AXI_RLAST;
  wire smartconnect_0_M01_AXI_RREADY;
  wire [1:0]smartconnect_0_M01_AXI_RRESP;
  wire smartconnect_0_M01_AXI_RVALID;
  wire [31:0]smartconnect_0_M01_AXI_WDATA;
  wire smartconnect_0_M01_AXI_WLAST;
  wire smartconnect_0_M01_AXI_WREADY;
  wire [3:0]smartconnect_0_M01_AXI_WSTRB;
  wire smartconnect_0_M01_AXI_WVALID;
  wire [13:0]smartconnect_0_M02_AXI_ARADDR;
  wire [1:0]smartconnect_0_M02_AXI_ARBURST;
  wire [3:0]smartconnect_0_M02_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M02_AXI_ARLEN;
  wire [0:0]smartconnect_0_M02_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M02_AXI_ARPROT;
  wire smartconnect_0_M02_AXI_ARREADY;
  wire [2:0]smartconnect_0_M02_AXI_ARSIZE;
  wire smartconnect_0_M02_AXI_ARVALID;
  wire [13:0]smartconnect_0_M02_AXI_AWADDR;
  wire [1:0]smartconnect_0_M02_AXI_AWBURST;
  wire [3:0]smartconnect_0_M02_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M02_AXI_AWLEN;
  wire [0:0]smartconnect_0_M02_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M02_AXI_AWPROT;
  wire smartconnect_0_M02_AXI_AWREADY;
  wire [2:0]smartconnect_0_M02_AXI_AWSIZE;
  wire smartconnect_0_M02_AXI_AWVALID;
  wire smartconnect_0_M02_AXI_BREADY;
  wire [1:0]smartconnect_0_M02_AXI_BRESP;
  wire smartconnect_0_M02_AXI_BVALID;
  wire [31:0]smartconnect_0_M02_AXI_RDATA;
  wire smartconnect_0_M02_AXI_RLAST;
  wire smartconnect_0_M02_AXI_RREADY;
  wire [1:0]smartconnect_0_M02_AXI_RRESP;
  wire smartconnect_0_M02_AXI_RVALID;
  wire [31:0]smartconnect_0_M02_AXI_WDATA;
  wire smartconnect_0_M02_AXI_WLAST;
  wire smartconnect_0_M02_AXI_WREADY;
  wire [3:0]smartconnect_0_M02_AXI_WSTRB;
  wire smartconnect_0_M02_AXI_WVALID;
  wire [13:0]smartconnect_0_M03_AXI_ARADDR;
  wire [1:0]smartconnect_0_M03_AXI_ARBURST;
  wire [3:0]smartconnect_0_M03_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M03_AXI_ARLEN;
  wire [0:0]smartconnect_0_M03_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M03_AXI_ARPROT;
  wire smartconnect_0_M03_AXI_ARREADY;
  wire [2:0]smartconnect_0_M03_AXI_ARSIZE;
  wire smartconnect_0_M03_AXI_ARVALID;
  wire [13:0]smartconnect_0_M03_AXI_AWADDR;
  wire [1:0]smartconnect_0_M03_AXI_AWBURST;
  wire [3:0]smartconnect_0_M03_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M03_AXI_AWLEN;
  wire [0:0]smartconnect_0_M03_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M03_AXI_AWPROT;
  wire smartconnect_0_M03_AXI_AWREADY;
  wire [2:0]smartconnect_0_M03_AXI_AWSIZE;
  wire smartconnect_0_M03_AXI_AWVALID;
  wire smartconnect_0_M03_AXI_BREADY;
  wire [1:0]smartconnect_0_M03_AXI_BRESP;
  wire smartconnect_0_M03_AXI_BVALID;
  wire [31:0]smartconnect_0_M03_AXI_RDATA;
  wire smartconnect_0_M03_AXI_RLAST;
  wire smartconnect_0_M03_AXI_RREADY;
  wire [1:0]smartconnect_0_M03_AXI_RRESP;
  wire smartconnect_0_M03_AXI_RVALID;
  wire [31:0]smartconnect_0_M03_AXI_WDATA;
  wire smartconnect_0_M03_AXI_WLAST;
  wire smartconnect_0_M03_AXI_WREADY;
  wire [3:0]smartconnect_0_M03_AXI_WSTRB;
  wire smartconnect_0_M03_AXI_WVALID;
  wire [13:0]smartconnect_0_M04_AXI_ARADDR;
  wire [1:0]smartconnect_0_M04_AXI_ARBURST;
  wire [3:0]smartconnect_0_M04_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M04_AXI_ARLEN;
  wire [0:0]smartconnect_0_M04_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M04_AXI_ARPROT;
  wire smartconnect_0_M04_AXI_ARREADY;
  wire [2:0]smartconnect_0_M04_AXI_ARSIZE;
  wire smartconnect_0_M04_AXI_ARVALID;
  wire [13:0]smartconnect_0_M04_AXI_AWADDR;
  wire [1:0]smartconnect_0_M04_AXI_AWBURST;
  wire [3:0]smartconnect_0_M04_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M04_AXI_AWLEN;
  wire [0:0]smartconnect_0_M04_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M04_AXI_AWPROT;
  wire smartconnect_0_M04_AXI_AWREADY;
  wire [2:0]smartconnect_0_M04_AXI_AWSIZE;
  wire smartconnect_0_M04_AXI_AWVALID;
  wire smartconnect_0_M04_AXI_BREADY;
  wire [1:0]smartconnect_0_M04_AXI_BRESP;
  wire smartconnect_0_M04_AXI_BVALID;
  wire [31:0]smartconnect_0_M04_AXI_RDATA;
  wire smartconnect_0_M04_AXI_RLAST;
  wire smartconnect_0_M04_AXI_RREADY;
  wire [1:0]smartconnect_0_M04_AXI_RRESP;
  wire smartconnect_0_M04_AXI_RVALID;
  wire [31:0]smartconnect_0_M04_AXI_WDATA;
  wire smartconnect_0_M04_AXI_WLAST;
  wire smartconnect_0_M04_AXI_WREADY;
  wire [3:0]smartconnect_0_M04_AXI_WSTRB;
  wire smartconnect_0_M04_AXI_WVALID;
  wire [13:0]smartconnect_0_M05_AXI_ARADDR;
  wire [1:0]smartconnect_0_M05_AXI_ARBURST;
  wire [3:0]smartconnect_0_M05_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M05_AXI_ARLEN;
  wire [0:0]smartconnect_0_M05_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M05_AXI_ARPROT;
  wire smartconnect_0_M05_AXI_ARREADY;
  wire [2:0]smartconnect_0_M05_AXI_ARSIZE;
  wire smartconnect_0_M05_AXI_ARVALID;
  wire [13:0]smartconnect_0_M05_AXI_AWADDR;
  wire [1:0]smartconnect_0_M05_AXI_AWBURST;
  wire [3:0]smartconnect_0_M05_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M05_AXI_AWLEN;
  wire [0:0]smartconnect_0_M05_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M05_AXI_AWPROT;
  wire smartconnect_0_M05_AXI_AWREADY;
  wire [2:0]smartconnect_0_M05_AXI_AWSIZE;
  wire smartconnect_0_M05_AXI_AWVALID;
  wire smartconnect_0_M05_AXI_BREADY;
  wire [1:0]smartconnect_0_M05_AXI_BRESP;
  wire smartconnect_0_M05_AXI_BVALID;
  wire [31:0]smartconnect_0_M05_AXI_RDATA;
  wire smartconnect_0_M05_AXI_RLAST;
  wire smartconnect_0_M05_AXI_RREADY;
  wire [1:0]smartconnect_0_M05_AXI_RRESP;
  wire smartconnect_0_M05_AXI_RVALID;
  wire [31:0]smartconnect_0_M05_AXI_WDATA;
  wire smartconnect_0_M05_AXI_WLAST;
  wire smartconnect_0_M05_AXI_WREADY;
  wire [3:0]smartconnect_0_M05_AXI_WSTRB;
  wire smartconnect_0_M05_AXI_WVALID;
  wire [13:0]smartconnect_0_M06_AXI_ARADDR;
  wire [1:0]smartconnect_0_M06_AXI_ARBURST;
  wire [3:0]smartconnect_0_M06_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M06_AXI_ARLEN;
  wire [0:0]smartconnect_0_M06_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M06_AXI_ARPROT;
  wire smartconnect_0_M06_AXI_ARREADY;
  wire [2:0]smartconnect_0_M06_AXI_ARSIZE;
  wire smartconnect_0_M06_AXI_ARVALID;
  wire [13:0]smartconnect_0_M06_AXI_AWADDR;
  wire [1:0]smartconnect_0_M06_AXI_AWBURST;
  wire [3:0]smartconnect_0_M06_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M06_AXI_AWLEN;
  wire [0:0]smartconnect_0_M06_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M06_AXI_AWPROT;
  wire smartconnect_0_M06_AXI_AWREADY;
  wire [2:0]smartconnect_0_M06_AXI_AWSIZE;
  wire smartconnect_0_M06_AXI_AWVALID;
  wire smartconnect_0_M06_AXI_BREADY;
  wire [1:0]smartconnect_0_M06_AXI_BRESP;
  wire smartconnect_0_M06_AXI_BVALID;
  wire [31:0]smartconnect_0_M06_AXI_RDATA;
  wire smartconnect_0_M06_AXI_RLAST;
  wire smartconnect_0_M06_AXI_RREADY;
  wire [1:0]smartconnect_0_M06_AXI_RRESP;
  wire smartconnect_0_M06_AXI_RVALID;
  wire [31:0]smartconnect_0_M06_AXI_WDATA;
  wire smartconnect_0_M06_AXI_WLAST;
  wire smartconnect_0_M06_AXI_WREADY;
  wire [3:0]smartconnect_0_M06_AXI_WSTRB;
  wire smartconnect_0_M06_AXI_WVALID;
  wire [13:0]smartconnect_0_M07_AXI_ARADDR;
  wire [1:0]smartconnect_0_M07_AXI_ARBURST;
  wire [3:0]smartconnect_0_M07_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M07_AXI_ARLEN;
  wire [0:0]smartconnect_0_M07_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M07_AXI_ARPROT;
  wire smartconnect_0_M07_AXI_ARREADY;
  wire [2:0]smartconnect_0_M07_AXI_ARSIZE;
  wire smartconnect_0_M07_AXI_ARVALID;
  wire [13:0]smartconnect_0_M07_AXI_AWADDR;
  wire [1:0]smartconnect_0_M07_AXI_AWBURST;
  wire [3:0]smartconnect_0_M07_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M07_AXI_AWLEN;
  wire [0:0]smartconnect_0_M07_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M07_AXI_AWPROT;
  wire smartconnect_0_M07_AXI_AWREADY;
  wire [2:0]smartconnect_0_M07_AXI_AWSIZE;
  wire smartconnect_0_M07_AXI_AWVALID;
  wire smartconnect_0_M07_AXI_BREADY;
  wire [1:0]smartconnect_0_M07_AXI_BRESP;
  wire smartconnect_0_M07_AXI_BVALID;
  wire [31:0]smartconnect_0_M07_AXI_RDATA;
  wire smartconnect_0_M07_AXI_RLAST;
  wire smartconnect_0_M07_AXI_RREADY;
  wire [1:0]smartconnect_0_M07_AXI_RRESP;
  wire smartconnect_0_M07_AXI_RVALID;
  wire [31:0]smartconnect_0_M07_AXI_WDATA;
  wire smartconnect_0_M07_AXI_WLAST;
  wire smartconnect_0_M07_AXI_WREADY;
  wire [3:0]smartconnect_0_M07_AXI_WSTRB;
  wire smartconnect_0_M07_AXI_WVALID;
  wire [8:0]smartconnect_0_M08_AXI_ARADDR;
  wire smartconnect_0_M08_AXI_ARREADY;
  wire smartconnect_0_M08_AXI_ARVALID;
  wire [8:0]smartconnect_0_M08_AXI_AWADDR;
  wire smartconnect_0_M08_AXI_AWREADY;
  wire smartconnect_0_M08_AXI_AWVALID;
  wire smartconnect_0_M08_AXI_BREADY;
  wire [1:0]smartconnect_0_M08_AXI_BRESP;
  wire smartconnect_0_M08_AXI_BVALID;
  wire [31:0]smartconnect_0_M08_AXI_RDATA;
  wire smartconnect_0_M08_AXI_RREADY;
  wire [1:0]smartconnect_0_M08_AXI_RRESP;
  wire smartconnect_0_M08_AXI_RVALID;
  wire [31:0]smartconnect_0_M08_AXI_WDATA;
  wire smartconnect_0_M08_AXI_WREADY;
  wire [3:0]smartconnect_0_M08_AXI_WSTRB;
  wire smartconnect_0_M08_AXI_WVALID;
  wire [8:0]smartconnect_0_M09_AXI_ARADDR;
  wire smartconnect_0_M09_AXI_ARREADY;
  wire smartconnect_0_M09_AXI_ARVALID;
  wire [8:0]smartconnect_0_M09_AXI_AWADDR;
  wire smartconnect_0_M09_AXI_AWREADY;
  wire smartconnect_0_M09_AXI_AWVALID;
  wire smartconnect_0_M09_AXI_BREADY;
  wire [1:0]smartconnect_0_M09_AXI_BRESP;
  wire smartconnect_0_M09_AXI_BVALID;
  wire [31:0]smartconnect_0_M09_AXI_RDATA;
  wire smartconnect_0_M09_AXI_RREADY;
  wire [1:0]smartconnect_0_M09_AXI_RRESP;
  wire smartconnect_0_M09_AXI_RVALID;
  wire [31:0]smartconnect_0_M09_AXI_WDATA;
  wire smartconnect_0_M09_AXI_WREADY;
  wire [3:0]smartconnect_0_M09_AXI_WSTRB;
  wire smartconnect_0_M09_AXI_WVALID;
  wire [8:0]smartconnect_0_M10_AXI_ARADDR;
  wire smartconnect_0_M10_AXI_ARREADY;
  wire smartconnect_0_M10_AXI_ARVALID;
  wire [8:0]smartconnect_0_M10_AXI_AWADDR;
  wire smartconnect_0_M10_AXI_AWREADY;
  wire smartconnect_0_M10_AXI_AWVALID;
  wire smartconnect_0_M10_AXI_BREADY;
  wire [1:0]smartconnect_0_M10_AXI_BRESP;
  wire smartconnect_0_M10_AXI_BVALID;
  wire [31:0]smartconnect_0_M10_AXI_RDATA;
  wire smartconnect_0_M10_AXI_RREADY;
  wire [1:0]smartconnect_0_M10_AXI_RRESP;
  wire smartconnect_0_M10_AXI_RVALID;
  wire [31:0]smartconnect_0_M10_AXI_WDATA;
  wire smartconnect_0_M10_AXI_WREADY;
  wire [3:0]smartconnect_0_M10_AXI_WSTRB;
  wire smartconnect_0_M10_AXI_WVALID;
  wire [8:0]smartconnect_0_M11_AXI_ARADDR;
  wire smartconnect_0_M11_AXI_ARREADY;
  wire smartconnect_0_M11_AXI_ARVALID;
  wire [8:0]smartconnect_0_M11_AXI_AWADDR;
  wire smartconnect_0_M11_AXI_AWREADY;
  wire smartconnect_0_M11_AXI_AWVALID;
  wire smartconnect_0_M11_AXI_BREADY;
  wire [1:0]smartconnect_0_M11_AXI_BRESP;
  wire smartconnect_0_M11_AXI_BVALID;
  wire [31:0]smartconnect_0_M11_AXI_RDATA;
  wire smartconnect_0_M11_AXI_RREADY;
  wire [1:0]smartconnect_0_M11_AXI_RRESP;
  wire smartconnect_0_M11_AXI_RVALID;
  wire [31:0]smartconnect_0_M11_AXI_WDATA;
  wire smartconnect_0_M11_AXI_WREADY;
  wire [3:0]smartconnect_0_M11_AXI_WSTRB;
  wire smartconnect_0_M11_AXI_WVALID;
  wire [8:0]smartconnect_0_M12_AXI_ARADDR;
  wire smartconnect_0_M12_AXI_ARREADY;
  wire smartconnect_0_M12_AXI_ARVALID;
  wire [8:0]smartconnect_0_M12_AXI_AWADDR;
  wire smartconnect_0_M12_AXI_AWREADY;
  wire smartconnect_0_M12_AXI_AWVALID;
  wire smartconnect_0_M12_AXI_BREADY;
  wire [1:0]smartconnect_0_M12_AXI_BRESP;
  wire smartconnect_0_M12_AXI_BVALID;
  wire [31:0]smartconnect_0_M12_AXI_RDATA;
  wire smartconnect_0_M12_AXI_RREADY;
  wire [1:0]smartconnect_0_M12_AXI_RRESP;
  wire smartconnect_0_M12_AXI_RVALID;
  wire [31:0]smartconnect_0_M12_AXI_WDATA;
  wire smartconnect_0_M12_AXI_WREADY;
  wire [3:0]smartconnect_0_M12_AXI_WSTRB;
  wire smartconnect_0_M12_AXI_WVALID;
  wire [8:0]smartconnect_0_M13_AXI_ARADDR;
  wire smartconnect_0_M13_AXI_ARREADY;
  wire smartconnect_0_M13_AXI_ARVALID;
  wire [8:0]smartconnect_0_M13_AXI_AWADDR;
  wire smartconnect_0_M13_AXI_AWREADY;
  wire smartconnect_0_M13_AXI_AWVALID;
  wire smartconnect_0_M13_AXI_BREADY;
  wire [1:0]smartconnect_0_M13_AXI_BRESP;
  wire smartconnect_0_M13_AXI_BVALID;
  wire [31:0]smartconnect_0_M13_AXI_RDATA;
  wire smartconnect_0_M13_AXI_RREADY;
  wire [1:0]smartconnect_0_M13_AXI_RRESP;
  wire smartconnect_0_M13_AXI_RVALID;
  wire [31:0]smartconnect_0_M13_AXI_WDATA;
  wire smartconnect_0_M13_AXI_WREADY;
  wire [3:0]smartconnect_0_M13_AXI_WSTRB;
  wire smartconnect_0_M13_AXI_WVALID;
  wire [8:0]smartconnect_0_M14_AXI_ARADDR;
  wire smartconnect_0_M14_AXI_ARREADY;
  wire smartconnect_0_M14_AXI_ARVALID;
  wire [8:0]smartconnect_0_M14_AXI_AWADDR;
  wire smartconnect_0_M14_AXI_AWREADY;
  wire smartconnect_0_M14_AXI_AWVALID;
  wire smartconnect_0_M14_AXI_BREADY;
  wire [1:0]smartconnect_0_M14_AXI_BRESP;
  wire smartconnect_0_M14_AXI_BVALID;
  wire [31:0]smartconnect_0_M14_AXI_RDATA;
  wire smartconnect_0_M14_AXI_RREADY;
  wire [1:0]smartconnect_0_M14_AXI_RRESP;
  wire smartconnect_0_M14_AXI_RVALID;
  wire [31:0]smartconnect_0_M14_AXI_WDATA;
  wire smartconnect_0_M14_AXI_WREADY;
  wire [3:0]smartconnect_0_M14_AXI_WSTRB;
  wire smartconnect_0_M14_AXI_WVALID;
  wire [8:0]smartconnect_0_M15_AXI_ARADDR;
  wire smartconnect_0_M15_AXI_ARREADY;
  wire smartconnect_0_M15_AXI_ARVALID;
  wire [8:0]smartconnect_0_M15_AXI_AWADDR;
  wire smartconnect_0_M15_AXI_AWREADY;
  wire smartconnect_0_M15_AXI_AWVALID;
  wire smartconnect_0_M15_AXI_BREADY;
  wire [1:0]smartconnect_0_M15_AXI_BRESP;
  wire smartconnect_0_M15_AXI_BVALID;
  wire [31:0]smartconnect_0_M15_AXI_RDATA;
  wire smartconnect_0_M15_AXI_RREADY;
  wire [1:0]smartconnect_0_M15_AXI_RRESP;
  wire smartconnect_0_M15_AXI_RVALID;
  wire [31:0]smartconnect_0_M15_AXI_WDATA;
  wire smartconnect_0_M15_AXI_WREADY;
  wire [3:0]smartconnect_0_M15_AXI_WSTRB;
  wire smartconnect_0_M15_AXI_WVALID;
  wire [0:0]xlconstant_0_dout;

  assign data_in_1 = link0_data_in;
  assign link0_data_out[0] = link0_data_out1;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x40000000 32 > design_1 index_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_0_0 axi_bram_ctrl_index_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x41000000 32 > design_1 index_1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_0_1 axi_bram_ctrl_index_1
       (.bram_addr_a(axi_bram_ctrl_1_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_1_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M01_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M01_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M01_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M01_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M01_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M01_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M01_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M01_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M01_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M01_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M01_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M01_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M01_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M01_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x42000000 32 > design_1 index_2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_0_2 axi_bram_ctrl_index_2
       (.bram_addr_a(axi_bram_ctrl_2_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_2_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M02_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M02_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M02_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M02_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M02_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M02_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M02_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M02_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M02_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M02_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M02_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M02_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M02_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M02_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x43000000 32 > design_1 index_3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_1_0 axi_bram_ctrl_index_3
       (.bram_addr_a(axi_bram_ctrl_3_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_3_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_3_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M03_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M03_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M03_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M03_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M03_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M03_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M03_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M03_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M03_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M03_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M03_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M03_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M03_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M03_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x44000000 32 > design_1 result_0" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_0_3 axi_bram_ctrl_result_0
       (.bram_addr_a(axi_bram_ctrl_4_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_4_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_4_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_4_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_4_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_4_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_4_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M04_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M04_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M04_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M04_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M04_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M04_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M04_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M04_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M04_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M04_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M04_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M04_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M04_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M04_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M04_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x45000000 32 > design_1 result_1" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_1_1 axi_bram_ctrl_result_1
       (.bram_addr_a(axi_bram_ctrl_5_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_5_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_5_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_5_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_5_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_5_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_5_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M05_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M05_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M05_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M05_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M05_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M05_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M05_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M05_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M05_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M05_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M05_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M05_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M05_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M05_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M05_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M05_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M05_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M05_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M05_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M05_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M05_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M05_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M05_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M05_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x46000000 32 > design_1 result_2" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_2_0 axi_bram_ctrl_result_2
       (.bram_addr_a(axi_bram_ctrl_6_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_6_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_6_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_6_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_6_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_6_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_6_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M06_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M06_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M06_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M06_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M06_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M06_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M06_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M06_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M06_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M06_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M06_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M06_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M06_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M06_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M06_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M06_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M06_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M06_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M06_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M06_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M06_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M06_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M06_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M06_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M06_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M06_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M06_AXI_WVALID));
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x47000000 32 > design_1 result_3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_axi_bram_ctrl_3_0 axi_bram_ctrl_result_3
       (.bram_addr_a(axi_bram_ctrl_7_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_7_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_7_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_7_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_7_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_7_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_7_BRAM_PORTA_DIN),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M07_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M07_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M07_AXI_ARCACHE),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arlen(smartconnect_0_M07_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M07_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M07_AXI_ARPROT),
        .s_axi_arready(smartconnect_0_M07_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M07_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M07_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M07_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_0_M07_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M07_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M07_AXI_AWPROT),
        .s_axi_awready(smartconnect_0_M07_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M07_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M07_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M07_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M07_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M07_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M07_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M07_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M07_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M07_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M07_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M07_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M07_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M07_AXI_WVALID));
  design_1_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M08_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M08_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M08_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M08_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M08_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M08_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M08_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M08_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M08_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M08_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M08_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M08_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M08_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M08_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M08_AXI_WVALID));
  design_1_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_i(xlconstant_0_dout),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M09_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M09_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M09_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M09_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M09_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M09_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M09_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M09_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M09_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M09_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M09_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M09_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M09_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M09_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M09_AXI_WVALID));
  design_1_axi_gpio_0_1 axi_gpio_2
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_2_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M10_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M10_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M10_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M10_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M10_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M10_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M10_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M10_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M10_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M10_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M10_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M10_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M10_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M10_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M10_AXI_WVALID));
  design_1_axi_gpio_1_1 axi_gpio_3
       (.gpio_io_i(xlconstant_0_dout),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M11_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M11_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M11_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M11_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M11_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M11_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M11_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M11_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M11_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M11_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M11_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M11_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M11_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M11_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M11_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M11_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M11_AXI_WVALID));
  design_1_axi_gpio_0_2 axi_gpio_4
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_4_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M12_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M12_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M12_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M12_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M12_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M12_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M12_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M12_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M12_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M12_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M12_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M12_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M12_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M12_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M12_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M12_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M12_AXI_WVALID));
  design_1_axi_gpio_1_2 axi_gpio_5
       (.gpio_io_i(xlconstant_0_dout),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M13_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M13_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M13_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M13_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M13_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M13_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M13_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M13_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M13_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M13_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M13_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M13_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M13_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M13_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M13_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M13_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M13_AXI_WVALID));
  design_1_axi_gpio_2_0 axi_gpio_6
       (.gpio_io_i(1'b0),
        .gpio_io_o(axi_gpio_6_gpio_io_o),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M14_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M14_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M14_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M14_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M14_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M14_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M14_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M14_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M14_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M14_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M14_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M14_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M14_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M14_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M14_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M14_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M14_AXI_WVALID));
  design_1_axi_gpio_3_0 axi_gpio_7
       (.gpio_io_i(xlconstant_0_dout),
        .s_axi_aclk(processing_system7_0_FCLK_CLK0),
        .s_axi_araddr(smartconnect_0_M15_AXI_ARADDR),
        .s_axi_aresetn(processing_system7_0_FCLK_RESET0_N),
        .s_axi_arready(smartconnect_0_M15_AXI_ARREADY),
        .s_axi_arvalid(smartconnect_0_M15_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M15_AXI_AWADDR),
        .s_axi_awready(smartconnect_0_M15_AXI_AWREADY),
        .s_axi_awvalid(smartconnect_0_M15_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M15_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M15_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M15_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M15_AXI_RDATA),
        .s_axi_rready(smartconnect_0_M15_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M15_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M15_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M15_AXI_WDATA),
        .s_axi_wready(smartconnect_0_M15_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M15_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M15_AXI_WVALID));
  design_1_blk_mem_gen_0_0 index_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  design_1_blk_mem_gen_0_1 index_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_1_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_1_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_1_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_1_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_1_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_1_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_1_BRAM_PORTA_WE));
  design_1_blk_mem_gen_0_2 index_2
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_2_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_2_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_2_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_2_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_2_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_2_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_2_BRAM_PORTA_WE));
  design_1_blk_mem_gen_1_0 index_3
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_3_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_3_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_3_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_3_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_3_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_3_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_3_BRAM_PORTA_WE));
  link0_imp_VSHBRZ link0
       (.clk_100M(processing_system7_0_FCLK_CLK0),
        .data_in(data_in_1),
        .data_out(link0_data_out1),
        .reset_n(processing_system7_0_FCLK_RESET0_N1));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(processing_system7_0_FCLK_RESET0_N1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(processing_system7_0_FCLK_RESET0_N),
        .slowest_sync_clk(processing_system7_0_FCLK_CLK0));
  (* BMM_INFO_PROCESSOR = "arm > design_1 axi_bram_ctrl_index_0 design_1 axi_bram_ctrl_index_1 design_1 axi_bram_ctrl_index_2 design_1 axi_bram_ctrl_index_3 design_1 axi_bram_ctrl_result_0 design_1 axi_bram_ctrl_result_1 design_1 axi_bram_ctrl_result_2 design_1 axi_bram_ctrl_result_3" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  design_1_processing_system7_0_0 processing_system7_0
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(processing_system7_0_FCLK_CLK0),
        .FCLK_RESET0_N(processing_system7_0_FCLK_RESET0_N1),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(processing_system7_0_FCLK_CLK0),
        .M_AXI_GP0_ARADDR(processing_system7_0_M_AXI_GP0_ARADDR),
        .M_AXI_GP0_ARBURST(processing_system7_0_M_AXI_GP0_ARBURST),
        .M_AXI_GP0_ARCACHE(processing_system7_0_M_AXI_GP0_ARCACHE),
        .M_AXI_GP0_ARID(processing_system7_0_M_AXI_GP0_ARID),
        .M_AXI_GP0_ARLEN(processing_system7_0_M_AXI_GP0_ARLEN),
        .M_AXI_GP0_ARLOCK(processing_system7_0_M_AXI_GP0_ARLOCK),
        .M_AXI_GP0_ARPROT(processing_system7_0_M_AXI_GP0_ARPROT),
        .M_AXI_GP0_ARQOS(processing_system7_0_M_AXI_GP0_ARQOS),
        .M_AXI_GP0_ARREADY(processing_system7_0_M_AXI_GP0_ARREADY),
        .M_AXI_GP0_ARSIZE(processing_system7_0_M_AXI_GP0_ARSIZE),
        .M_AXI_GP0_ARVALID(processing_system7_0_M_AXI_GP0_ARVALID),
        .M_AXI_GP0_AWADDR(processing_system7_0_M_AXI_GP0_AWADDR),
        .M_AXI_GP0_AWBURST(processing_system7_0_M_AXI_GP0_AWBURST),
        .M_AXI_GP0_AWCACHE(processing_system7_0_M_AXI_GP0_AWCACHE),
        .M_AXI_GP0_AWID(processing_system7_0_M_AXI_GP0_AWID),
        .M_AXI_GP0_AWLEN(processing_system7_0_M_AXI_GP0_AWLEN),
        .M_AXI_GP0_AWLOCK(processing_system7_0_M_AXI_GP0_AWLOCK),
        .M_AXI_GP0_AWPROT(processing_system7_0_M_AXI_GP0_AWPROT),
        .M_AXI_GP0_AWQOS(processing_system7_0_M_AXI_GP0_AWQOS),
        .M_AXI_GP0_AWREADY(processing_system7_0_M_AXI_GP0_AWREADY),
        .M_AXI_GP0_AWSIZE(processing_system7_0_M_AXI_GP0_AWSIZE),
        .M_AXI_GP0_AWVALID(processing_system7_0_M_AXI_GP0_AWVALID),
        .M_AXI_GP0_BID(processing_system7_0_M_AXI_GP0_BID),
        .M_AXI_GP0_BREADY(processing_system7_0_M_AXI_GP0_BREADY),
        .M_AXI_GP0_BRESP(processing_system7_0_M_AXI_GP0_BRESP),
        .M_AXI_GP0_BVALID(processing_system7_0_M_AXI_GP0_BVALID),
        .M_AXI_GP0_RDATA(processing_system7_0_M_AXI_GP0_RDATA),
        .M_AXI_GP0_RID(processing_system7_0_M_AXI_GP0_RID),
        .M_AXI_GP0_RLAST(processing_system7_0_M_AXI_GP0_RLAST),
        .M_AXI_GP0_RREADY(processing_system7_0_M_AXI_GP0_RREADY),
        .M_AXI_GP0_RRESP(processing_system7_0_M_AXI_GP0_RRESP),
        .M_AXI_GP0_RVALID(processing_system7_0_M_AXI_GP0_RVALID),
        .M_AXI_GP0_WDATA(processing_system7_0_M_AXI_GP0_WDATA),
        .M_AXI_GP0_WID(processing_system7_0_M_AXI_GP0_WID),
        .M_AXI_GP0_WLAST(processing_system7_0_M_AXI_GP0_WLAST),
        .M_AXI_GP0_WREADY(processing_system7_0_M_AXI_GP0_WREADY),
        .M_AXI_GP0_WSTRB(processing_system7_0_M_AXI_GP0_WSTRB),
        .M_AXI_GP0_WVALID(processing_system7_0_M_AXI_GP0_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .USB0_VBUS_PWRFAULT(1'b0));
  design_1_blk_mem_gen_0_3 result_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_4_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_4_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_4_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_4_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_4_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_4_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_4_BRAM_PORTA_WE));
  design_1_blk_mem_gen_1_1 result_1
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_5_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_5_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_5_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_5_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_5_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_5_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_5_BRAM_PORTA_WE));
  design_1_blk_mem_gen_2_0 result_2
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_6_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_6_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_6_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_6_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_6_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_6_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_6_BRAM_PORTA_WE));
  design_1_blk_mem_gen_3_0 result_3
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_7_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_7_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_7_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_7_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_7_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_7_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_7_BRAM_PORTA_WE));
  design_1_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .M01_AXI_araddr(smartconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arburst(smartconnect_0_M01_AXI_ARBURST),
        .M01_AXI_arcache(smartconnect_0_M01_AXI_ARCACHE),
        .M01_AXI_arlen(smartconnect_0_M01_AXI_ARLEN),
        .M01_AXI_arlock(smartconnect_0_M01_AXI_ARLOCK),
        .M01_AXI_arprot(smartconnect_0_M01_AXI_ARPROT),
        .M01_AXI_arready(smartconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arsize(smartconnect_0_M01_AXI_ARSIZE),
        .M01_AXI_arvalid(smartconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(smartconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awburst(smartconnect_0_M01_AXI_AWBURST),
        .M01_AXI_awcache(smartconnect_0_M01_AXI_AWCACHE),
        .M01_AXI_awlen(smartconnect_0_M01_AXI_AWLEN),
        .M01_AXI_awlock(smartconnect_0_M01_AXI_AWLOCK),
        .M01_AXI_awprot(smartconnect_0_M01_AXI_AWPROT),
        .M01_AXI_awready(smartconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awsize(smartconnect_0_M01_AXI_AWSIZE),
        .M01_AXI_awvalid(smartconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(smartconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(smartconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(smartconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(smartconnect_0_M01_AXI_RDATA),
        .M01_AXI_rlast(smartconnect_0_M01_AXI_RLAST),
        .M01_AXI_rready(smartconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(smartconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(smartconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(smartconnect_0_M01_AXI_WDATA),
        .M01_AXI_wlast(smartconnect_0_M01_AXI_WLAST),
        .M01_AXI_wready(smartconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(smartconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(smartconnect_0_M01_AXI_WVALID),
        .M02_AXI_araddr(smartconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arburst(smartconnect_0_M02_AXI_ARBURST),
        .M02_AXI_arcache(smartconnect_0_M02_AXI_ARCACHE),
        .M02_AXI_arlen(smartconnect_0_M02_AXI_ARLEN),
        .M02_AXI_arlock(smartconnect_0_M02_AXI_ARLOCK),
        .M02_AXI_arprot(smartconnect_0_M02_AXI_ARPROT),
        .M02_AXI_arready(smartconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arsize(smartconnect_0_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(smartconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(smartconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awburst(smartconnect_0_M02_AXI_AWBURST),
        .M02_AXI_awcache(smartconnect_0_M02_AXI_AWCACHE),
        .M02_AXI_awlen(smartconnect_0_M02_AXI_AWLEN),
        .M02_AXI_awlock(smartconnect_0_M02_AXI_AWLOCK),
        .M02_AXI_awprot(smartconnect_0_M02_AXI_AWPROT),
        .M02_AXI_awready(smartconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awsize(smartconnect_0_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(smartconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(smartconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(smartconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(smartconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(smartconnect_0_M02_AXI_RDATA),
        .M02_AXI_rlast(smartconnect_0_M02_AXI_RLAST),
        .M02_AXI_rready(smartconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(smartconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(smartconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(smartconnect_0_M02_AXI_WDATA),
        .M02_AXI_wlast(smartconnect_0_M02_AXI_WLAST),
        .M02_AXI_wready(smartconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(smartconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(smartconnect_0_M02_AXI_WVALID),
        .M03_AXI_araddr(smartconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arburst(smartconnect_0_M03_AXI_ARBURST),
        .M03_AXI_arcache(smartconnect_0_M03_AXI_ARCACHE),
        .M03_AXI_arlen(smartconnect_0_M03_AXI_ARLEN),
        .M03_AXI_arlock(smartconnect_0_M03_AXI_ARLOCK),
        .M03_AXI_arprot(smartconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arready(smartconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arsize(smartconnect_0_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(smartconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(smartconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awburst(smartconnect_0_M03_AXI_AWBURST),
        .M03_AXI_awcache(smartconnect_0_M03_AXI_AWCACHE),
        .M03_AXI_awlen(smartconnect_0_M03_AXI_AWLEN),
        .M03_AXI_awlock(smartconnect_0_M03_AXI_AWLOCK),
        .M03_AXI_awprot(smartconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awready(smartconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awsize(smartconnect_0_M03_AXI_AWSIZE),
        .M03_AXI_awvalid(smartconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(smartconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(smartconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(smartconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(smartconnect_0_M03_AXI_RDATA),
        .M03_AXI_rlast(smartconnect_0_M03_AXI_RLAST),
        .M03_AXI_rready(smartconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(smartconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(smartconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(smartconnect_0_M03_AXI_WDATA),
        .M03_AXI_wlast(smartconnect_0_M03_AXI_WLAST),
        .M03_AXI_wready(smartconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(smartconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(smartconnect_0_M03_AXI_WVALID),
        .M04_AXI_araddr(smartconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arburst(smartconnect_0_M04_AXI_ARBURST),
        .M04_AXI_arcache(smartconnect_0_M04_AXI_ARCACHE),
        .M04_AXI_arlen(smartconnect_0_M04_AXI_ARLEN),
        .M04_AXI_arlock(smartconnect_0_M04_AXI_ARLOCK),
        .M04_AXI_arprot(smartconnect_0_M04_AXI_ARPROT),
        .M04_AXI_arready(smartconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arsize(smartconnect_0_M04_AXI_ARSIZE),
        .M04_AXI_arvalid(smartconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(smartconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awburst(smartconnect_0_M04_AXI_AWBURST),
        .M04_AXI_awcache(smartconnect_0_M04_AXI_AWCACHE),
        .M04_AXI_awlen(smartconnect_0_M04_AXI_AWLEN),
        .M04_AXI_awlock(smartconnect_0_M04_AXI_AWLOCK),
        .M04_AXI_awprot(smartconnect_0_M04_AXI_AWPROT),
        .M04_AXI_awready(smartconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awsize(smartconnect_0_M04_AXI_AWSIZE),
        .M04_AXI_awvalid(smartconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(smartconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(smartconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(smartconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(smartconnect_0_M04_AXI_RDATA),
        .M04_AXI_rlast(smartconnect_0_M04_AXI_RLAST),
        .M04_AXI_rready(smartconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(smartconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(smartconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(smartconnect_0_M04_AXI_WDATA),
        .M04_AXI_wlast(smartconnect_0_M04_AXI_WLAST),
        .M04_AXI_wready(smartconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(smartconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(smartconnect_0_M04_AXI_WVALID),
        .M05_AXI_araddr(smartconnect_0_M05_AXI_ARADDR),
        .M05_AXI_arburst(smartconnect_0_M05_AXI_ARBURST),
        .M05_AXI_arcache(smartconnect_0_M05_AXI_ARCACHE),
        .M05_AXI_arlen(smartconnect_0_M05_AXI_ARLEN),
        .M05_AXI_arlock(smartconnect_0_M05_AXI_ARLOCK),
        .M05_AXI_arprot(smartconnect_0_M05_AXI_ARPROT),
        .M05_AXI_arready(smartconnect_0_M05_AXI_ARREADY),
        .M05_AXI_arsize(smartconnect_0_M05_AXI_ARSIZE),
        .M05_AXI_arvalid(smartconnect_0_M05_AXI_ARVALID),
        .M05_AXI_awaddr(smartconnect_0_M05_AXI_AWADDR),
        .M05_AXI_awburst(smartconnect_0_M05_AXI_AWBURST),
        .M05_AXI_awcache(smartconnect_0_M05_AXI_AWCACHE),
        .M05_AXI_awlen(smartconnect_0_M05_AXI_AWLEN),
        .M05_AXI_awlock(smartconnect_0_M05_AXI_AWLOCK),
        .M05_AXI_awprot(smartconnect_0_M05_AXI_AWPROT),
        .M05_AXI_awready(smartconnect_0_M05_AXI_AWREADY),
        .M05_AXI_awsize(smartconnect_0_M05_AXI_AWSIZE),
        .M05_AXI_awvalid(smartconnect_0_M05_AXI_AWVALID),
        .M05_AXI_bready(smartconnect_0_M05_AXI_BREADY),
        .M05_AXI_bresp(smartconnect_0_M05_AXI_BRESP),
        .M05_AXI_bvalid(smartconnect_0_M05_AXI_BVALID),
        .M05_AXI_rdata(smartconnect_0_M05_AXI_RDATA),
        .M05_AXI_rlast(smartconnect_0_M05_AXI_RLAST),
        .M05_AXI_rready(smartconnect_0_M05_AXI_RREADY),
        .M05_AXI_rresp(smartconnect_0_M05_AXI_RRESP),
        .M05_AXI_rvalid(smartconnect_0_M05_AXI_RVALID),
        .M05_AXI_wdata(smartconnect_0_M05_AXI_WDATA),
        .M05_AXI_wlast(smartconnect_0_M05_AXI_WLAST),
        .M05_AXI_wready(smartconnect_0_M05_AXI_WREADY),
        .M05_AXI_wstrb(smartconnect_0_M05_AXI_WSTRB),
        .M05_AXI_wvalid(smartconnect_0_M05_AXI_WVALID),
        .M06_AXI_araddr(smartconnect_0_M06_AXI_ARADDR),
        .M06_AXI_arburst(smartconnect_0_M06_AXI_ARBURST),
        .M06_AXI_arcache(smartconnect_0_M06_AXI_ARCACHE),
        .M06_AXI_arlen(smartconnect_0_M06_AXI_ARLEN),
        .M06_AXI_arlock(smartconnect_0_M06_AXI_ARLOCK),
        .M06_AXI_arprot(smartconnect_0_M06_AXI_ARPROT),
        .M06_AXI_arready(smartconnect_0_M06_AXI_ARREADY),
        .M06_AXI_arsize(smartconnect_0_M06_AXI_ARSIZE),
        .M06_AXI_arvalid(smartconnect_0_M06_AXI_ARVALID),
        .M06_AXI_awaddr(smartconnect_0_M06_AXI_AWADDR),
        .M06_AXI_awburst(smartconnect_0_M06_AXI_AWBURST),
        .M06_AXI_awcache(smartconnect_0_M06_AXI_AWCACHE),
        .M06_AXI_awlen(smartconnect_0_M06_AXI_AWLEN),
        .M06_AXI_awlock(smartconnect_0_M06_AXI_AWLOCK),
        .M06_AXI_awprot(smartconnect_0_M06_AXI_AWPROT),
        .M06_AXI_awready(smartconnect_0_M06_AXI_AWREADY),
        .M06_AXI_awsize(smartconnect_0_M06_AXI_AWSIZE),
        .M06_AXI_awvalid(smartconnect_0_M06_AXI_AWVALID),
        .M06_AXI_bready(smartconnect_0_M06_AXI_BREADY),
        .M06_AXI_bresp(smartconnect_0_M06_AXI_BRESP),
        .M06_AXI_bvalid(smartconnect_0_M06_AXI_BVALID),
        .M06_AXI_rdata(smartconnect_0_M06_AXI_RDATA),
        .M06_AXI_rlast(smartconnect_0_M06_AXI_RLAST),
        .M06_AXI_rready(smartconnect_0_M06_AXI_RREADY),
        .M06_AXI_rresp(smartconnect_0_M06_AXI_RRESP),
        .M06_AXI_rvalid(smartconnect_0_M06_AXI_RVALID),
        .M06_AXI_wdata(smartconnect_0_M06_AXI_WDATA),
        .M06_AXI_wlast(smartconnect_0_M06_AXI_WLAST),
        .M06_AXI_wready(smartconnect_0_M06_AXI_WREADY),
        .M06_AXI_wstrb(smartconnect_0_M06_AXI_WSTRB),
        .M06_AXI_wvalid(smartconnect_0_M06_AXI_WVALID),
        .M07_AXI_araddr(smartconnect_0_M07_AXI_ARADDR),
        .M07_AXI_arburst(smartconnect_0_M07_AXI_ARBURST),
        .M07_AXI_arcache(smartconnect_0_M07_AXI_ARCACHE),
        .M07_AXI_arlen(smartconnect_0_M07_AXI_ARLEN),
        .M07_AXI_arlock(smartconnect_0_M07_AXI_ARLOCK),
        .M07_AXI_arprot(smartconnect_0_M07_AXI_ARPROT),
        .M07_AXI_arready(smartconnect_0_M07_AXI_ARREADY),
        .M07_AXI_arsize(smartconnect_0_M07_AXI_ARSIZE),
        .M07_AXI_arvalid(smartconnect_0_M07_AXI_ARVALID),
        .M07_AXI_awaddr(smartconnect_0_M07_AXI_AWADDR),
        .M07_AXI_awburst(smartconnect_0_M07_AXI_AWBURST),
        .M07_AXI_awcache(smartconnect_0_M07_AXI_AWCACHE),
        .M07_AXI_awlen(smartconnect_0_M07_AXI_AWLEN),
        .M07_AXI_awlock(smartconnect_0_M07_AXI_AWLOCK),
        .M07_AXI_awprot(smartconnect_0_M07_AXI_AWPROT),
        .M07_AXI_awready(smartconnect_0_M07_AXI_AWREADY),
        .M07_AXI_awsize(smartconnect_0_M07_AXI_AWSIZE),
        .M07_AXI_awvalid(smartconnect_0_M07_AXI_AWVALID),
        .M07_AXI_bready(smartconnect_0_M07_AXI_BREADY),
        .M07_AXI_bresp(smartconnect_0_M07_AXI_BRESP),
        .M07_AXI_bvalid(smartconnect_0_M07_AXI_BVALID),
        .M07_AXI_rdata(smartconnect_0_M07_AXI_RDATA),
        .M07_AXI_rlast(smartconnect_0_M07_AXI_RLAST),
        .M07_AXI_rready(smartconnect_0_M07_AXI_RREADY),
        .M07_AXI_rresp(smartconnect_0_M07_AXI_RRESP),
        .M07_AXI_rvalid(smartconnect_0_M07_AXI_RVALID),
        .M07_AXI_wdata(smartconnect_0_M07_AXI_WDATA),
        .M07_AXI_wlast(smartconnect_0_M07_AXI_WLAST),
        .M07_AXI_wready(smartconnect_0_M07_AXI_WREADY),
        .M07_AXI_wstrb(smartconnect_0_M07_AXI_WSTRB),
        .M07_AXI_wvalid(smartconnect_0_M07_AXI_WVALID),
        .M08_AXI_araddr(smartconnect_0_M08_AXI_ARADDR),
        .M08_AXI_arready(smartconnect_0_M08_AXI_ARREADY),
        .M08_AXI_arvalid(smartconnect_0_M08_AXI_ARVALID),
        .M08_AXI_awaddr(smartconnect_0_M08_AXI_AWADDR),
        .M08_AXI_awready(smartconnect_0_M08_AXI_AWREADY),
        .M08_AXI_awvalid(smartconnect_0_M08_AXI_AWVALID),
        .M08_AXI_bready(smartconnect_0_M08_AXI_BREADY),
        .M08_AXI_bresp(smartconnect_0_M08_AXI_BRESP),
        .M08_AXI_bvalid(smartconnect_0_M08_AXI_BVALID),
        .M08_AXI_rdata(smartconnect_0_M08_AXI_RDATA),
        .M08_AXI_rready(smartconnect_0_M08_AXI_RREADY),
        .M08_AXI_rresp(smartconnect_0_M08_AXI_RRESP),
        .M08_AXI_rvalid(smartconnect_0_M08_AXI_RVALID),
        .M08_AXI_wdata(smartconnect_0_M08_AXI_WDATA),
        .M08_AXI_wready(smartconnect_0_M08_AXI_WREADY),
        .M08_AXI_wstrb(smartconnect_0_M08_AXI_WSTRB),
        .M08_AXI_wvalid(smartconnect_0_M08_AXI_WVALID),
        .M09_AXI_araddr(smartconnect_0_M09_AXI_ARADDR),
        .M09_AXI_arready(smartconnect_0_M09_AXI_ARREADY),
        .M09_AXI_arvalid(smartconnect_0_M09_AXI_ARVALID),
        .M09_AXI_awaddr(smartconnect_0_M09_AXI_AWADDR),
        .M09_AXI_awready(smartconnect_0_M09_AXI_AWREADY),
        .M09_AXI_awvalid(smartconnect_0_M09_AXI_AWVALID),
        .M09_AXI_bready(smartconnect_0_M09_AXI_BREADY),
        .M09_AXI_bresp(smartconnect_0_M09_AXI_BRESP),
        .M09_AXI_bvalid(smartconnect_0_M09_AXI_BVALID),
        .M09_AXI_rdata(smartconnect_0_M09_AXI_RDATA),
        .M09_AXI_rready(smartconnect_0_M09_AXI_RREADY),
        .M09_AXI_rresp(smartconnect_0_M09_AXI_RRESP),
        .M09_AXI_rvalid(smartconnect_0_M09_AXI_RVALID),
        .M09_AXI_wdata(smartconnect_0_M09_AXI_WDATA),
        .M09_AXI_wready(smartconnect_0_M09_AXI_WREADY),
        .M09_AXI_wstrb(smartconnect_0_M09_AXI_WSTRB),
        .M09_AXI_wvalid(smartconnect_0_M09_AXI_WVALID),
        .M10_AXI_araddr(smartconnect_0_M10_AXI_ARADDR),
        .M10_AXI_arready(smartconnect_0_M10_AXI_ARREADY),
        .M10_AXI_arvalid(smartconnect_0_M10_AXI_ARVALID),
        .M10_AXI_awaddr(smartconnect_0_M10_AXI_AWADDR),
        .M10_AXI_awready(smartconnect_0_M10_AXI_AWREADY),
        .M10_AXI_awvalid(smartconnect_0_M10_AXI_AWVALID),
        .M10_AXI_bready(smartconnect_0_M10_AXI_BREADY),
        .M10_AXI_bresp(smartconnect_0_M10_AXI_BRESP),
        .M10_AXI_bvalid(smartconnect_0_M10_AXI_BVALID),
        .M10_AXI_rdata(smartconnect_0_M10_AXI_RDATA),
        .M10_AXI_rready(smartconnect_0_M10_AXI_RREADY),
        .M10_AXI_rresp(smartconnect_0_M10_AXI_RRESP),
        .M10_AXI_rvalid(smartconnect_0_M10_AXI_RVALID),
        .M10_AXI_wdata(smartconnect_0_M10_AXI_WDATA),
        .M10_AXI_wready(smartconnect_0_M10_AXI_WREADY),
        .M10_AXI_wstrb(smartconnect_0_M10_AXI_WSTRB),
        .M10_AXI_wvalid(smartconnect_0_M10_AXI_WVALID),
        .M11_AXI_araddr(smartconnect_0_M11_AXI_ARADDR),
        .M11_AXI_arready(smartconnect_0_M11_AXI_ARREADY),
        .M11_AXI_arvalid(smartconnect_0_M11_AXI_ARVALID),
        .M11_AXI_awaddr(smartconnect_0_M11_AXI_AWADDR),
        .M11_AXI_awready(smartconnect_0_M11_AXI_AWREADY),
        .M11_AXI_awvalid(smartconnect_0_M11_AXI_AWVALID),
        .M11_AXI_bready(smartconnect_0_M11_AXI_BREADY),
        .M11_AXI_bresp(smartconnect_0_M11_AXI_BRESP),
        .M11_AXI_bvalid(smartconnect_0_M11_AXI_BVALID),
        .M11_AXI_rdata(smartconnect_0_M11_AXI_RDATA),
        .M11_AXI_rready(smartconnect_0_M11_AXI_RREADY),
        .M11_AXI_rresp(smartconnect_0_M11_AXI_RRESP),
        .M11_AXI_rvalid(smartconnect_0_M11_AXI_RVALID),
        .M11_AXI_wdata(smartconnect_0_M11_AXI_WDATA),
        .M11_AXI_wready(smartconnect_0_M11_AXI_WREADY),
        .M11_AXI_wstrb(smartconnect_0_M11_AXI_WSTRB),
        .M11_AXI_wvalid(smartconnect_0_M11_AXI_WVALID),
        .M12_AXI_araddr(smartconnect_0_M12_AXI_ARADDR),
        .M12_AXI_arready(smartconnect_0_M12_AXI_ARREADY),
        .M12_AXI_arvalid(smartconnect_0_M12_AXI_ARVALID),
        .M12_AXI_awaddr(smartconnect_0_M12_AXI_AWADDR),
        .M12_AXI_awready(smartconnect_0_M12_AXI_AWREADY),
        .M12_AXI_awvalid(smartconnect_0_M12_AXI_AWVALID),
        .M12_AXI_bready(smartconnect_0_M12_AXI_BREADY),
        .M12_AXI_bresp(smartconnect_0_M12_AXI_BRESP),
        .M12_AXI_bvalid(smartconnect_0_M12_AXI_BVALID),
        .M12_AXI_rdata(smartconnect_0_M12_AXI_RDATA),
        .M12_AXI_rready(smartconnect_0_M12_AXI_RREADY),
        .M12_AXI_rresp(smartconnect_0_M12_AXI_RRESP),
        .M12_AXI_rvalid(smartconnect_0_M12_AXI_RVALID),
        .M12_AXI_wdata(smartconnect_0_M12_AXI_WDATA),
        .M12_AXI_wready(smartconnect_0_M12_AXI_WREADY),
        .M12_AXI_wstrb(smartconnect_0_M12_AXI_WSTRB),
        .M12_AXI_wvalid(smartconnect_0_M12_AXI_WVALID),
        .M13_AXI_araddr(smartconnect_0_M13_AXI_ARADDR),
        .M13_AXI_arready(smartconnect_0_M13_AXI_ARREADY),
        .M13_AXI_arvalid(smartconnect_0_M13_AXI_ARVALID),
        .M13_AXI_awaddr(smartconnect_0_M13_AXI_AWADDR),
        .M13_AXI_awready(smartconnect_0_M13_AXI_AWREADY),
        .M13_AXI_awvalid(smartconnect_0_M13_AXI_AWVALID),
        .M13_AXI_bready(smartconnect_0_M13_AXI_BREADY),
        .M13_AXI_bresp(smartconnect_0_M13_AXI_BRESP),
        .M13_AXI_bvalid(smartconnect_0_M13_AXI_BVALID),
        .M13_AXI_rdata(smartconnect_0_M13_AXI_RDATA),
        .M13_AXI_rready(smartconnect_0_M13_AXI_RREADY),
        .M13_AXI_rresp(smartconnect_0_M13_AXI_RRESP),
        .M13_AXI_rvalid(smartconnect_0_M13_AXI_RVALID),
        .M13_AXI_wdata(smartconnect_0_M13_AXI_WDATA),
        .M13_AXI_wready(smartconnect_0_M13_AXI_WREADY),
        .M13_AXI_wstrb(smartconnect_0_M13_AXI_WSTRB),
        .M13_AXI_wvalid(smartconnect_0_M13_AXI_WVALID),
        .M14_AXI_araddr(smartconnect_0_M14_AXI_ARADDR),
        .M14_AXI_arready(smartconnect_0_M14_AXI_ARREADY),
        .M14_AXI_arvalid(smartconnect_0_M14_AXI_ARVALID),
        .M14_AXI_awaddr(smartconnect_0_M14_AXI_AWADDR),
        .M14_AXI_awready(smartconnect_0_M14_AXI_AWREADY),
        .M14_AXI_awvalid(smartconnect_0_M14_AXI_AWVALID),
        .M14_AXI_bready(smartconnect_0_M14_AXI_BREADY),
        .M14_AXI_bresp(smartconnect_0_M14_AXI_BRESP),
        .M14_AXI_bvalid(smartconnect_0_M14_AXI_BVALID),
        .M14_AXI_rdata(smartconnect_0_M14_AXI_RDATA),
        .M14_AXI_rready(smartconnect_0_M14_AXI_RREADY),
        .M14_AXI_rresp(smartconnect_0_M14_AXI_RRESP),
        .M14_AXI_rvalid(smartconnect_0_M14_AXI_RVALID),
        .M14_AXI_wdata(smartconnect_0_M14_AXI_WDATA),
        .M14_AXI_wready(smartconnect_0_M14_AXI_WREADY),
        .M14_AXI_wstrb(smartconnect_0_M14_AXI_WSTRB),
        .M14_AXI_wvalid(smartconnect_0_M14_AXI_WVALID),
        .M15_AXI_araddr(smartconnect_0_M15_AXI_ARADDR),
        .M15_AXI_arready(smartconnect_0_M15_AXI_ARREADY),
        .M15_AXI_arvalid(smartconnect_0_M15_AXI_ARVALID),
        .M15_AXI_awaddr(smartconnect_0_M15_AXI_AWADDR),
        .M15_AXI_awready(smartconnect_0_M15_AXI_AWREADY),
        .M15_AXI_awvalid(smartconnect_0_M15_AXI_AWVALID),
        .M15_AXI_bready(smartconnect_0_M15_AXI_BREADY),
        .M15_AXI_bresp(smartconnect_0_M15_AXI_BRESP),
        .M15_AXI_bvalid(smartconnect_0_M15_AXI_BVALID),
        .M15_AXI_rdata(smartconnect_0_M15_AXI_RDATA),
        .M15_AXI_rready(smartconnect_0_M15_AXI_RREADY),
        .M15_AXI_rresp(smartconnect_0_M15_AXI_RRESP),
        .M15_AXI_rvalid(smartconnect_0_M15_AXI_RVALID),
        .M15_AXI_wdata(smartconnect_0_M15_AXI_WDATA),
        .M15_AXI_wready(smartconnect_0_M15_AXI_WREADY),
        .M15_AXI_wstrb(smartconnect_0_M15_AXI_WSTRB),
        .M15_AXI_wvalid(smartconnect_0_M15_AXI_WVALID),
        .S00_AXI_araddr(processing_system7_0_M_AXI_GP0_ARADDR),
        .S00_AXI_arburst(processing_system7_0_M_AXI_GP0_ARBURST),
        .S00_AXI_arcache(processing_system7_0_M_AXI_GP0_ARCACHE),
        .S00_AXI_arid(processing_system7_0_M_AXI_GP0_ARID),
        .S00_AXI_arlen(processing_system7_0_M_AXI_GP0_ARLEN),
        .S00_AXI_arlock(processing_system7_0_M_AXI_GP0_ARLOCK),
        .S00_AXI_arprot(processing_system7_0_M_AXI_GP0_ARPROT),
        .S00_AXI_arqos(processing_system7_0_M_AXI_GP0_ARQOS),
        .S00_AXI_arready(processing_system7_0_M_AXI_GP0_ARREADY),
        .S00_AXI_arsize(processing_system7_0_M_AXI_GP0_ARSIZE),
        .S00_AXI_arvalid(processing_system7_0_M_AXI_GP0_ARVALID),
        .S00_AXI_awaddr(processing_system7_0_M_AXI_GP0_AWADDR),
        .S00_AXI_awburst(processing_system7_0_M_AXI_GP0_AWBURST),
        .S00_AXI_awcache(processing_system7_0_M_AXI_GP0_AWCACHE),
        .S00_AXI_awid(processing_system7_0_M_AXI_GP0_AWID),
        .S00_AXI_awlen(processing_system7_0_M_AXI_GP0_AWLEN),
        .S00_AXI_awlock(processing_system7_0_M_AXI_GP0_AWLOCK),
        .S00_AXI_awprot(processing_system7_0_M_AXI_GP0_AWPROT),
        .S00_AXI_awqos(processing_system7_0_M_AXI_GP0_AWQOS),
        .S00_AXI_awready(processing_system7_0_M_AXI_GP0_AWREADY),
        .S00_AXI_awsize(processing_system7_0_M_AXI_GP0_AWSIZE),
        .S00_AXI_awvalid(processing_system7_0_M_AXI_GP0_AWVALID),
        .S00_AXI_bid(processing_system7_0_M_AXI_GP0_BID),
        .S00_AXI_bready(processing_system7_0_M_AXI_GP0_BREADY),
        .S00_AXI_bresp(processing_system7_0_M_AXI_GP0_BRESP),
        .S00_AXI_bvalid(processing_system7_0_M_AXI_GP0_BVALID),
        .S00_AXI_rdata(processing_system7_0_M_AXI_GP0_RDATA),
        .S00_AXI_rid(processing_system7_0_M_AXI_GP0_RID),
        .S00_AXI_rlast(processing_system7_0_M_AXI_GP0_RLAST),
        .S00_AXI_rready(processing_system7_0_M_AXI_GP0_RREADY),
        .S00_AXI_rresp(processing_system7_0_M_AXI_GP0_RRESP),
        .S00_AXI_rvalid(processing_system7_0_M_AXI_GP0_RVALID),
        .S00_AXI_wdata(processing_system7_0_M_AXI_GP0_WDATA),
        .S00_AXI_wid(processing_system7_0_M_AXI_GP0_WID),
        .S00_AXI_wlast(processing_system7_0_M_AXI_GP0_WLAST),
        .S00_AXI_wready(processing_system7_0_M_AXI_GP0_WREADY),
        .S00_AXI_wstrb(processing_system7_0_M_AXI_GP0_WSTRB),
        .S00_AXI_wvalid(processing_system7_0_M_AXI_GP0_WVALID),
        .aclk(processing_system7_0_FCLK_CLK0),
        .aresetn(processing_system7_0_FCLK_RESET0_N));
  design_1_system_ila_0_0 system_ila_0
       (.clk(processing_system7_0_FCLK_CLK0),
        .probe0(axi_gpio_0_gpio_io_o),
        .probe1(axi_gpio_2_gpio_io_o),
        .probe2(axi_gpio_4_gpio_io_o),
        .probe3(axi_gpio_6_gpio_io_o));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module link0_imp_VSHBRZ
   (clk_100M,
    data_in,
    data_out,
    reset_n);
  input clk_100M;
  input data_in;
  output [0:0]data_out;
  input reset_n;

  wire Counter_4bit_0_out3;
  wire D_flip_flops_4_0_Q1;
  wire D_flip_flops_4_0_Q1B;
  wire D_flip_flops_4_0_Q2B;
  wire D_flip_flops_4_0_Q3;
  wire D_flip_flops_4_0_Q3B;
  wire clk_100M_1;
  wire clk_wiz_0_clk_out1;
  wire data_in_1;
  wire div16_0_clk_div;
  wire [0:0]proc_sys_reset_16M_peripheral_aresetn;
  wire [0:0]reset_n_1;
  wire reset_n_2;
  wire [4:0]s2p_0_channel;
  wire [11:0]s2p_0_data_out;
  wire [4:0]s2p_0_data_out_ch;
  wire [3:0]s2p_0_link;
  wire [2:0]s2p_0_sublink;
  wire serial_shift_0_Q4;
  wire serial_shift_0_Q5;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [0:0]util_vector_logic_2_Res;
  wire [0:0]util_vector_logic_3_Res;
  wire [3:0]xlconstant_0_dout;

  assign clk_100M_1 = clk_100M;
  assign data_in_1 = data_in;
  assign data_out[0] = util_vector_logic_3_Res;
  assign reset_n_2 = reset_n;
  design_1_Counter_4bit_0_0 Counter_4bit_0
       (.clk(clk_wiz_0_clk_out1),
        .enp(data_in_1),
        .ent(D_flip_flops_4_0_Q3B),
        .loadn(util_vector_logic_1_Res),
        .out3(Counter_4bit_0_out3),
        .rstn(reset_n_1),
        .value(xlconstant_0_dout));
  design_1_D_flip_flops_4_0_0 D_flip_flops_4_0
       (.D1(data_in_1),
        .D2(D_flip_flops_4_0_Q1),
        .D3(Counter_4bit_0_out3),
        .D4(D_flip_flops_4_0_Q3),
        .Q1(D_flip_flops_4_0_Q1),
        .Q1B(D_flip_flops_4_0_Q1B),
        .Q2B(D_flip_flops_4_0_Q2B),
        .Q3(D_flip_flops_4_0_Q3),
        .Q3B(D_flip_flops_4_0_Q3B),
        .clk(clk_wiz_0_clk_out1),
        .rstn(reset_n_1));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_100M_1),
        .clk_out1(clk_wiz_0_clk_out1));
  design_1_div16_0_0 div16_0
       (.clk(clk_wiz_0_clk_out1),
        .clk_div(div16_0_clk_div),
        .rstn(proc_sys_reset_16M_peripheral_aresetn));
  design_1_ila_0_0 ila_0
       (.clk(clk_wiz_0_clk_out1),
        .probe0(s2p_0_link),
        .probe1(s2p_0_sublink),
        .probe2(s2p_0_channel),
        .probe3(s2p_0_data_out_ch),
        .probe4(s2p_0_data_out));
  design_1_proc_sys_reset_0_1 proc_sys_reset_16M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_n_2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_16M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  design_1_proc_sys_reset_0_2 proc_sys_reset_1M
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_n_2),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(reset_n_1),
        .slowest_sync_clk(div16_0_clk_div));
  design_1_s2p_0_0 s2p_0
       (.channel(s2p_0_channel),
        .clk(div16_0_clk_div),
        .data_in(util_vector_logic_3_Res),
        .data_out(s2p_0_data_out),
        .data_out_ch(s2p_0_data_out_ch),
        .link(s2p_0_link),
        .rstn(reset_n_1),
        .sublink(s2p_0_sublink));
  design_1_serial_shift_0_0 serial_shift_0
       (.Q4(serial_shift_0_Q4),
        .Q5(serial_shift_0_Q5),
        .clk(div16_0_clk_div),
        .data_in(data_in_1),
        .rstn(reset_n_1));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(D_flip_flops_4_0_Q1B),
        .Op2(D_flip_flops_4_0_Q2B),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(util_vector_logic_0_Res),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_2_0 util_vector_logic_2
       (.Op1(serial_shift_0_Q4),
        .Op2(serial_shift_0_Q5),
        .Res(util_vector_logic_2_Res));
  design_1_util_vector_logic_2_1 util_vector_logic_3
       (.Op1(data_in_1),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_3_Res));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
