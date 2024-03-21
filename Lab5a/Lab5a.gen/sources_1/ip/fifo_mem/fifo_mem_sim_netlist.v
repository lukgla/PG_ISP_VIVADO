// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Mar 21 17:10:40 2024
// Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lukgla/Desktop/Vivado/Lab5a/Lab5a.gen/sources_1/ip/fifo_mem/fifo_mem_sim_netlist.v
// Design      : fifo_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_mem,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module fifo_mem
   (clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 core_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME core_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire clk;
  wire [7:0]din;
  wire [7:0]dout;
  wire empty;
  wire full;
  wire rd_en;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [5:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "1" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "8" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "0" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "62" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "61" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "6" *) 
  (* C_RD_DEPTH = "64" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "6" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_mem_fifo_generator_v13_2_9 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(clk),
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(1'b0),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[5:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(1'b0),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
jLV29U0rrfMIZhYJzdoUrPoqB9eHQ5NXmWyCdqnN3Wgm+GU4C3zthrN1m4QGiaj0thPCIynZbX+0
7yjtkv+T5ByJ6NhiofAwWseGLvPXlYu6ERAPvi4SAYpF2VUqQHtPAbPmnPubGdDRgIEpeobF7hsz
rEcpEru1pyiScUriyuo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vsoizVrOONWw/DhjRLEYrtRmtji+Ok63CbpSg/l9VnoKAi8tAzqRbQ57atGB2N6IGGbKHkbK2Uzh
EHgWvYZeyt4hE+bpQX91vc9PNxfjQMGzPoFD3jCWk30EmEk+AND39eWx+DhJ8xhFuucoOQ2GwyAk
B+Mjs15naPE7DvlHel8hnD4dfSdYhGKp96oozu8JeBto8aHG6poOuYkxSwaut7NCI+mabCkMxtMp
RrydgmRuTvhRTbJMyx5CxFSZTRDrS5aU1vaRlnMiqKCI7g2KY9pemYaJsFeVodBuo6IyKGynyEhs
wr+VtUhQDtaVhMkwB95WwmMoDk9F2L5Au1I+TQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
W081dPMCWhKs5YlQD7n3zvf7+PTcnb8eFWxoVs8+zHLkxDMA1klITbsfztGYvJFce8Yao5XQLLqZ
oUE5Pq2arq+zwICFUcLjdMsmP1WmL82znHOPHm83zNwrxWMloHkySAqzFbgJeHa973uZqj0M8ydc
sYmzCYVlGVjt0QX0xqA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Zpc3MmdLWaVOv+S4z2POuoyslYoAbWc+Npxq2UyQRtDwf566IId3uwAetolMAgfLo/G3ezuSOXMn
8NznS37h9XvmVrxA50SAux68P87WgkLtiUYqM3CMBKkxNlZ/TR8WzTuQyFdvzkOE9lp8HC7LXnk5
RDsnOM+su46FW7ysY01COslo9Xc7rhs6WFqx29+Xcqk8+ZMLSzaJfuwZdNmJFS3Q1vhlq3ZeYqMl
wMieB731KsPxjxp7VKNHpTbgFryC2isqc4ohBDOt52M/Bz4B/rIpFeHfZ7X3jWSiKtSuBsDN2NXf
EMjfAT248dlK7NxJ+NBNPhS5sLxTiGyQhta57A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
rPMYqnkKhJKV1wltOfDrKos9ZbucaoX3WGTuqsdLkGpcKObzslHBwlGrKtWV7bZYmS2SM+QuEMfa
CE+tCUdsSiprp+n5BuSQlJa6BJ8mlqccjoo/JLw2QEmUhyMXQ3TLGomGGoZdeTmMPXhUBAOyLPea
Ddc8mgtTN8Kpy117GOTXDKP+IKJqW01fLrPJpgEhFiJCbyElLgtCRWmI94gX+y4XNVS0Cd1YwNw6
4nHgnEdC7fXARDKcYO3VsWC/pdzPQgursXloNLrVYa6i2xr+8E1V0+nSWwNYQZP7XUIVqXKMU8Ea
bT4acXrRCF/5tJJ5B9JparYI0zxXSbaakn1dIw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mfroTgL8g2pyIXQ/mGO9YHm19cd5mOlJ++qpusOYeVxGmkIhvF4aKx+AyIUz2yGGAeCtOzIasHty
pyqKgZhibSqxcpHgR0m6GOxXXOXJiHaK8NzxUzXeRJovcBI/WjtDhXeb1LRMI1J97jVBtJPJQH0Y
fGOD7jWvkvQwxnrZdyLp6kPWgSIcavHHDbO7iJv4gnyGp6W3/FCDo2RKWNLoW+SNjSdLZ6YRP8a+
ldaGU8TYvJ03KWlmik7repuN6AwxCjg2KeQ+x1sBAEXzROXomuSbvX3ZAo8UiIKAQY1SJumHLG3L
QI/S4Wbl1Hz6LDTsttMwP480gq6+tb6s1E4oWw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QJIabgm8dx/gVHbOQFwt8maOKVHFgkpZTPR6dzD8fqoGo9M9oGPTqBqchtPZWgv2UYFF2KEUSlV4
L3SDXBKrLs+NsAVTcICaEMiEi6j82zj/C1LsPkQfS8RLrg0ab8lbDMb5YqJ7lkHs3iM65x2iN1Mf
66cTgCbkAdl3rDpab75btpTQt5ZKiq5CSY3RZfyIW0uWbTGTELm6liuRKM9+K8BQwTU7A+FFFQBA
/9eJwQYzNNA/iwoYJ2WTPd6pBlzXriNLu9M+/2bYicNBSuH1PBR9v2ESrTB6k7EiV1zvBXV9NuG/
sFt4MumWMuSNwP2W38bQATxxW/l0IrmaXGOC/w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
lhKf/Vgj6pHpme1ji4HVe36BU8pMkam/2I9lFeyOiBnIbzgdEGfLJBcEvkL33A7s0hxa6LFbHnkT
upgMpPjmIghBz3xUQ13vpiY152thFec6qvlcdg1r+GTmnBOSFl6g/OfZ3eFUhfsve6ZjQHpXnKFo
a55hN2+eP1EG9+VxGeM7XkHaeFhEIry52qtnmg072KEFIwRiGs2d/TJ4AqupuIdIiP1kTN9k+oqa
2ta1vdtqPY0dDHqrf+5YSd0CejkhQeCqg/bauLP3755SwdOPRgooG5ANT8hUpTiFMFXtU+GC9NSp
evJtMHUy1NbgMmhFHO+w3URLEdjSaBxZPD7YLdWkF65jY526tJzoek+BzEKoBaGfCaY7O1nHKXm+
89k3rPUy0Xo4/0nHpno+N/Db09heJPbnGsCwN/l+KnR6Lz8kvWziBjZe0ijOkKI+T12y3T1VeOtY
H/aqtNlQt1mhFwrbw6ezaAiDPVbCQXnly6b4tbb8+nFsxWOGIGAfLozB

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PNsQ8uEcQYrl+GaDuBaq1tQ5br5aAdaqHnyrc0NVu/JnQUk53jaiLx8Oz5fNACvWelUUk2/C+P5I
b2rbU1bb/dC6TqC5J1N0yoMYRYw58u4Lrl8Kgqgt9Rlph5Qgzzfxp+oblXF/pO4mRyAXpZhpNkFT
0Ar9BUtPOTOtJ9/g53SRnZ6GjxzfeD+25J4fcXBNo2gCTgUkwiLSsJRwTB/cJmn+dZPwPdIOHEP9
TkfDK+OrbLYO3T+DFBTCMRNH2NB1J9sc5s+nPU8iYnjgPTo6HoGW+LIlCz6yNJMZzJzoeW708utc
0fJXkT7vLDVh7olvy3V9AAY8Do0YR1kiZlhVhQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zAz8RnGHFebkJFAS+gjC+mXHW7m7We+JgSmIz15mS01u/4+9Ng0sJfkeXOClmVPTQ2Mp2Yuv6/6f
ehzUTcANilWsqLM6Q1FToCPNX/NTqodlcHirGM7b5R9yevouNT/aqH12nmbunBQmBHmehNutdCjG
r6Z7kZgeZ2ZE7MMOF0rTy1XHEPkqgMNTRoS8R/pPWPTW4/j+bn3aJj0Q/fTz4Gi3mbSUKWs2fREQ
UKiuolNJkN6DiDvhlVYHUyytXNJG44ikmBXehoQQRLapkYaxnQmMRT1ok9uY6pKoy71CtvJ3Mt2x
EQv1GU2i4qQyAOwa0mkEohWXduicU6tDz3zQwQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
TK3eE9V+v1z2P1KjG4GrjhA1n3qDOpNzLGXdtjnjhF0QBFPSuhC+nmNqTPOb3p2a9r5KD0miY3Cd
+KpjH6Ao09E2/LD2Go4aLQh6vP+9BldlSKEwCGfx2NjBQrXWVH21lQR7IRjOvyTOclpd7SgtUJLw
dvebETyLiKr9C6RfnIBeptuCA3iJlXfwkh6I0JfzD5WBizQkotioZmmrXv5105pCXQ4Ta1WThFsA
2ll9dZeSjEDHUxxhfyfjryv9m4VL89ZDU/rGITsdptwB1BC1jLqmPDymY05lyECnjA6NIR5GGfI4
K2y2f4GfikKoN5r9IOvFzw963Wm82ZZPtXOKGg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 76272)
`pragma protect data_block
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
GlfqGKIq
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
