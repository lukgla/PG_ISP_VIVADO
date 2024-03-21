// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Mar 21 17:10:39 2024
// Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_mem_sim_netlist.v
// Design      : fifo_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_mem,fifo_generator_v13_2_9,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_9 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 76608)
`pragma protect data_block
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
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
