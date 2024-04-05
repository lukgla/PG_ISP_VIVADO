// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  5 13:27:10 2024
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/lukgla/Documents/GitHub/PG_ISP_VIVADO/2018/8a/8a.srcs/sources_1/ip/singen/singen_sim_netlist.v
// Design      : singen
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "singen,dds_compiler_v6_0_17,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module singen
   (aclk,
    aclken,
    aresetn,
    s_axis_config_tvalid,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tdata,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:clockenable:1.0 aclken_intf CE" *) (* x_interface_parameter = "XIL_INTERFACENAME aclken_intf, POLARITY ACTIVE_LOW" *) input aclken;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXIS_CONFIG, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_config_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TDATA" *) input [15:0]s_axis_config_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS_CONFIG TLAST" *) input s_axis_config_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.000, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [31:0]m_axis_data_tdata;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 event_s_config_tlast_missing_intf INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME event_s_config_tlast_missing_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_s_config_tlast_missing;
  (* x_interface_info = "xilinx.com:signal:interrupt:1.0 event_s_config_tlast_unexpected_intf INTERRUPT" *) (* x_interface_parameter = "XIL_INTERFACENAME event_s_config_tlast_unexpected_intf, SENSITIVITY EDGE_RISING, PortWidth 1" *) output event_s_config_tlast_unexpected;

  wire aclk;
  wire aclken;
  wire aresetn;
  wire event_s_config_tlast_missing;
  wire event_s_config_tlast_unexpected;
  wire [31:0]m_axis_data_tdata;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_config_tdata;
  wire s_axis_config_tlast;
  wire s_axis_config_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "16" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "2" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "1" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "32" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "11" *) 
  (* C_PHASE_ANGLE_WIDTH = "11" *) 
  (* C_PHASE_INCREMENT = "1" *) 
  (* C_PHASE_INCREMENT_VALUE = "100000000,100000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  singen_dds_compiler_v6_0_17 U0
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[15:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(event_s_config_tlast_missing),
        .event_s_config_tlast_unexpected(event_s_config_tlast_unexpected),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tlast(s_axis_config_tlast),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule

(* C_ACCUMULATOR_WIDTH = "16" *) (* C_AMPLITUDE = "0" *) (* C_CHANNELS = "2" *) 
(* C_CHAN_WIDTH = "1" *) (* C_DEBUG_INTERFACE = "0" *) (* C_HAS_ACLKEN = "1" *) 
(* C_HAS_ARESETN = "1" *) (* C_HAS_M_DATA = "1" *) (* C_HAS_M_PHASE = "0" *) 
(* C_HAS_PHASEGEN = "1" *) (* C_HAS_PHASE_OUT = "0" *) (* C_HAS_SINCOS = "1" *) 
(* C_HAS_S_CONFIG = "1" *) (* C_HAS_S_PHASE = "0" *) (* C_HAS_TLAST = "0" *) 
(* C_HAS_TREADY = "0" *) (* C_LATENCY = "4" *) (* C_MEM_TYPE = "1" *) 
(* C_MODE_OF_OPERATION = "0" *) (* C_MODULUS = "9" *) (* C_M_DATA_HAS_TUSER = "0" *) 
(* C_M_DATA_TDATA_WIDTH = "32" *) (* C_M_DATA_TUSER_WIDTH = "1" *) (* C_M_PHASE_HAS_TUSER = "0" *) 
(* C_M_PHASE_TDATA_WIDTH = "1" *) (* C_M_PHASE_TUSER_WIDTH = "1" *) (* C_NEGATIVE_COSINE = "0" *) 
(* C_NEGATIVE_SINE = "0" *) (* C_NOISE_SHAPING = "0" *) (* C_OPTIMISE_GOAL = "0" *) 
(* C_OUTPUTS_REQUIRED = "2" *) (* C_OUTPUT_FORM = "0" *) (* C_OUTPUT_WIDTH = "11" *) 
(* C_PHASE_ANGLE_WIDTH = "11" *) (* C_PHASE_INCREMENT = "1" *) (* C_PHASE_INCREMENT_VALUE = "100000000,100000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
(* C_PHASE_OFFSET = "0" *) (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) (* C_POR_MODE = "0" *) 
(* C_RESYNC = "0" *) (* C_S_CONFIG_SYNC_MODE = "0" *) (* C_S_CONFIG_TDATA_WIDTH = "16" *) 
(* C_S_PHASE_HAS_TUSER = "0" *) (* C_S_PHASE_TDATA_WIDTH = "1" *) (* C_S_PHASE_TUSER_WIDTH = "1" *) 
(* C_USE_DSP48 = "0" *) (* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "dds_compiler_v6_0_17" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module singen_dds_compiler_v6_0_17
   (aclk,
    aclken,
    aresetn,
    s_axis_phase_tvalid,
    s_axis_phase_tready,
    s_axis_phase_tdata,
    s_axis_phase_tlast,
    s_axis_phase_tuser,
    s_axis_config_tvalid,
    s_axis_config_tready,
    s_axis_config_tdata,
    s_axis_config_tlast,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tuser,
    m_axis_phase_tvalid,
    m_axis_phase_tready,
    m_axis_phase_tdata,
    m_axis_phase_tlast,
    m_axis_phase_tuser,
    event_pinc_invalid,
    event_poff_invalid,
    event_phase_in_invalid,
    event_s_phase_tlast_missing,
    event_s_phase_tlast_unexpected,
    event_s_phase_chanid_incorrect,
    event_s_config_tlast_missing,
    event_s_config_tlast_unexpected,
    debug_axi_pinc_in,
    debug_axi_poff_in,
    debug_axi_resync_in,
    debug_axi_chan_in,
    debug_core_nd,
    debug_phase,
    debug_phase_nd);
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_phase_tvalid;
  output s_axis_phase_tready;
  input [0:0]s_axis_phase_tdata;
  input s_axis_phase_tlast;
  input [0:0]s_axis_phase_tuser;
  input s_axis_config_tvalid;
  output s_axis_config_tready;
  input [15:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  input m_axis_data_tready;
  output [31:0]m_axis_data_tdata;
  output m_axis_data_tlast;
  output [0:0]m_axis_data_tuser;
  output m_axis_phase_tvalid;
  input m_axis_phase_tready;
  output [0:0]m_axis_phase_tdata;
  output m_axis_phase_tlast;
  output [0:0]m_axis_phase_tuser;
  output event_pinc_invalid;
  output event_poff_invalid;
  output event_phase_in_invalid;
  output event_s_phase_tlast_missing;
  output event_s_phase_tlast_unexpected;
  output event_s_phase_chanid_incorrect;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
  output [15:0]debug_axi_pinc_in;
  output [15:0]debug_axi_poff_in;
  output debug_axi_resync_in;
  output [0:0]debug_axi_chan_in;
  output debug_core_nd;
  output [15:0]debug_phase;
  output debug_phase_nd;

  wire \<const0> ;
  wire aclk;
  wire aclken;
  wire aresetn;
  wire event_s_config_tlast_missing;
  wire event_s_config_tlast_unexpected;
  wire [26:0]\^m_axis_data_tdata ;
  wire m_axis_data_tvalid;
  wire [15:0]s_axis_config_tdata;
  wire s_axis_config_tlast;
  wire s_axis_config_tready;
  wire s_axis_config_tvalid;
  wire NLW_i_synth_debug_axi_resync_in_UNCONNECTED;
  wire NLW_i_synth_debug_core_nd_UNCONNECTED;
  wire NLW_i_synth_debug_phase_nd_UNCONNECTED;
  wire NLW_i_synth_event_phase_in_invalid_UNCONNECTED;
  wire NLW_i_synth_event_pinc_invalid_UNCONNECTED;
  wire NLW_i_synth_event_poff_invalid_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_i_synth_m_axis_data_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_i_synth_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_i_synth_debug_axi_chan_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_axi_pinc_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_axi_poff_in_UNCONNECTED;
  wire [15:0]NLW_i_synth_debug_phase_UNCONNECTED;
  wire [30:10]NLW_i_synth_m_axis_data_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_i_synth_m_axis_phase_tuser_UNCONNECTED;

  assign debug_axi_chan_in[0] = \<const0> ;
  assign debug_axi_pinc_in[15] = \<const0> ;
  assign debug_axi_pinc_in[14] = \<const0> ;
  assign debug_axi_pinc_in[13] = \<const0> ;
  assign debug_axi_pinc_in[12] = \<const0> ;
  assign debug_axi_pinc_in[11] = \<const0> ;
  assign debug_axi_pinc_in[10] = \<const0> ;
  assign debug_axi_pinc_in[9] = \<const0> ;
  assign debug_axi_pinc_in[8] = \<const0> ;
  assign debug_axi_pinc_in[7] = \<const0> ;
  assign debug_axi_pinc_in[6] = \<const0> ;
  assign debug_axi_pinc_in[5] = \<const0> ;
  assign debug_axi_pinc_in[4] = \<const0> ;
  assign debug_axi_pinc_in[3] = \<const0> ;
  assign debug_axi_pinc_in[2] = \<const0> ;
  assign debug_axi_pinc_in[1] = \<const0> ;
  assign debug_axi_pinc_in[0] = \<const0> ;
  assign debug_axi_poff_in[15] = \<const0> ;
  assign debug_axi_poff_in[14] = \<const0> ;
  assign debug_axi_poff_in[13] = \<const0> ;
  assign debug_axi_poff_in[12] = \<const0> ;
  assign debug_axi_poff_in[11] = \<const0> ;
  assign debug_axi_poff_in[10] = \<const0> ;
  assign debug_axi_poff_in[9] = \<const0> ;
  assign debug_axi_poff_in[8] = \<const0> ;
  assign debug_axi_poff_in[7] = \<const0> ;
  assign debug_axi_poff_in[6] = \<const0> ;
  assign debug_axi_poff_in[5] = \<const0> ;
  assign debug_axi_poff_in[4] = \<const0> ;
  assign debug_axi_poff_in[3] = \<const0> ;
  assign debug_axi_poff_in[2] = \<const0> ;
  assign debug_axi_poff_in[1] = \<const0> ;
  assign debug_axi_poff_in[0] = \<const0> ;
  assign debug_axi_resync_in = \<const0> ;
  assign debug_core_nd = \<const0> ;
  assign debug_phase[15] = \<const0> ;
  assign debug_phase[14] = \<const0> ;
  assign debug_phase[13] = \<const0> ;
  assign debug_phase[12] = \<const0> ;
  assign debug_phase[11] = \<const0> ;
  assign debug_phase[10] = \<const0> ;
  assign debug_phase[9] = \<const0> ;
  assign debug_phase[8] = \<const0> ;
  assign debug_phase[7] = \<const0> ;
  assign debug_phase[6] = \<const0> ;
  assign debug_phase[5] = \<const0> ;
  assign debug_phase[4] = \<const0> ;
  assign debug_phase[3] = \<const0> ;
  assign debug_phase[2] = \<const0> ;
  assign debug_phase[1] = \<const0> ;
  assign debug_phase[0] = \<const0> ;
  assign debug_phase_nd = \<const0> ;
  assign event_phase_in_invalid = \<const0> ;
  assign event_pinc_invalid = \<const0> ;
  assign event_poff_invalid = \<const0> ;
  assign event_s_phase_chanid_incorrect = \<const0> ;
  assign event_s_phase_tlast_missing = \<const0> ;
  assign event_s_phase_tlast_unexpected = \<const0> ;
  assign m_axis_data_tdata[31] = \^m_axis_data_tdata [26];
  assign m_axis_data_tdata[30] = \^m_axis_data_tdata [26];
  assign m_axis_data_tdata[29] = \^m_axis_data_tdata [26];
  assign m_axis_data_tdata[28] = \^m_axis_data_tdata [26];
  assign m_axis_data_tdata[27] = \^m_axis_data_tdata [26];
  assign m_axis_data_tdata[26:16] = \^m_axis_data_tdata [26:16];
  assign m_axis_data_tdata[15] = \^m_axis_data_tdata [10];
  assign m_axis_data_tdata[14] = \^m_axis_data_tdata [10];
  assign m_axis_data_tdata[13] = \^m_axis_data_tdata [10];
  assign m_axis_data_tdata[12] = \^m_axis_data_tdata [10];
  assign m_axis_data_tdata[11] = \^m_axis_data_tdata [10];
  assign m_axis_data_tdata[10:0] = \^m_axis_data_tdata [10:0];
  assign m_axis_data_tlast = \<const0> ;
  assign m_axis_data_tuser[0] = \<const0> ;
  assign m_axis_phase_tdata[0] = \<const0> ;
  assign m_axis_phase_tlast = \<const0> ;
  assign m_axis_phase_tuser[0] = \<const0> ;
  assign m_axis_phase_tvalid = \<const0> ;
  assign s_axis_phase_tready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_ACCUMULATOR_WIDTH = "16" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "2" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "1" *) 
  (* C_HAS_ARESETN = "1" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "1" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "0" *) 
  (* C_LATENCY = "4" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "32" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "2" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "11" *) 
  (* C_PHASE_ANGLE_WIDTH = "11" *) 
  (* C_PHASE_INCREMENT = "1" *) 
  (* C_PHASE_INCREMENT_VALUE = "100000000,100000000,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "16" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  singen_dds_compiler_v6_0_17_viv i_synth
       (.aclk(aclk),
        .aclken(aclken),
        .aresetn(aresetn),
        .debug_axi_chan_in(NLW_i_synth_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_i_synth_debug_axi_pinc_in_UNCONNECTED[15:0]),
        .debug_axi_poff_in(NLW_i_synth_debug_axi_poff_in_UNCONNECTED[15:0]),
        .debug_axi_resync_in(NLW_i_synth_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_i_synth_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_i_synth_debug_phase_UNCONNECTED[15:0]),
        .debug_phase_nd(NLW_i_synth_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_i_synth_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_i_synth_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_i_synth_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(event_s_config_tlast_missing),
        .event_s_config_tlast_unexpected(event_s_config_tlast_unexpected),
        .event_s_phase_chanid_incorrect(NLW_i_synth_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_i_synth_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_i_synth_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata({\^m_axis_data_tdata [26],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[30:26],\^m_axis_data_tdata [25:16],\^m_axis_data_tdata [10],NLW_i_synth_m_axis_data_tdata_UNCONNECTED[14:10],\^m_axis_data_tdata [9:0]}),
        .m_axis_data_tlast(NLW_i_synth_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(1'b0),
        .m_axis_data_tuser(NLW_i_synth_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_i_synth_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_i_synth_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_i_synth_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_i_synth_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(s_axis_config_tdata),
        .s_axis_config_tlast(s_axis_config_tlast),
        .s_axis_config_tready(s_axis_config_tready),
        .s_axis_config_tvalid(s_axis_config_tvalid),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_i_synth_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
gl8oTb3yK39LjDQS0B4PYP+vte8cGiBpEmJ9JLxCkI04rBQJe5sCt4dvUGvg1Ga0GoPkN0BTvh6i
v1YMWuZiJg==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
LV5tnIhV6fXU4gAQOLXCxdxya9doivJt+Y+5yV24zJ1I56Mu4gOTYyKzdDBlwz49as5fPNOvHvtM
FEjflUU6R2Yh76tXBr2An7Tc7qdcv/WUX57JWpXSPQfxdtsoJzfNEA5lf9cFyHWa+eE27NH4fCIB
fHvZTqNYCqZpO8hMEWo=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CtefK+dE5tJYyIkOlXrI1GU3HbXkaFgSREpPJj1NZdNualyVqOHiPJK5xJ71xxO6zkXYtBYfzkxn
9Eqf7SpqFizTSC3YZVNAp0ix3wloJ2xu9/08YGAzwYtrD72s/REOd9GdOS5BW5KfXcLDWxJnWFK3
mjj+cPJfHeoGuNLu6gH6HD/lNP6geaOelYYVD/TVk4P/j6qWfCikFKKuomVo3jbRD7F7QdkJDCeh
d5Xc8VxEXSaKIjFRuMTWZtjAQjFH5UpSMVhxV/fXhvzSM6V5P4QZA+memX692B8GYsTFU76iMlss
d7ocDlaRWbY0BTXFb2HZNfGcl+sqYKs8PYn/UA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UTuJ2/FiXz7w8k47LqoJjpB8chaAWEBjYpgn4jj1PBd2l6Nj6avA0We0iYNi5AJkwcUofxaNsFtE
+sVWsmGPk/0vN5Q90wbwbfGu18ni9SqWiSNRSUzzfB9h0bol599BuMG2pbcdYlanUIn9oPi4ZKeJ
2M667aoQ2BTcU/o1U8nn5wuoiboeNIqzcJS0jj+j6J5UYz5aHgwMcFlCGUwSQuAp+2VIulW4T1IV
NW+4iXCF7wife+1/XS6RYcYu+n4km8U2A8z/nLIuNXSO1T2HaR6rR3YxTorPEFUQnfrre1FxRLzT
6pi4dXPFPyG1bXISdn2AleLyNN3VFQjTEgHwsA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FMUkchj5p9XvgJ9tR5grSuP9aw5xa30l1YgNWO9WvtYYjYtQnsPBns5ryDL+PXPqQYQ3i0NvbEVZ
mN4H44H269BdOgH+vRRI3SR79goz8NqADp1QSv06wD02bUASlMq9aM6Phdxmqoalzn7A7dWDa+nU
2QokmpYQQylaKE1ZbXrz6loBY1IeoaMxbsQcvxJcI2aG1HO9NfyR9d5i3K9UmO1t9jFA+8k+GsKj
kNnLxX6I0J9fN8wKc7D007S9DgoQs6+WuCL6CudeG25OH6Gy/uLkY2Udzdpodegx89FgRLo92dDh
+0eWKh3H5TN2vtQ9mtD1iH6zm1l1IqnYy2G06A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
IjA88m1asiYMyCqMLSP/pVhA6mm9v8t5bFtEAMOvlQO8WTy5Vpca8kFPPuhuf6voqy+zwcLXRU9a
5UwLvCxgOEOo68GA3l4AR9WaPmcxPTPUwChO8zkHIDrS0eoDFMY1OTr1Lv8pbJknphtPExopREwk
KuHbtq4Mg3zw+se7q5E=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nZ0uDa4zhbQfoZoNpOAKrHOsOrOlSYjg5j1zWlifZ7mksZmmo1GUwbu4BrFKsE9nPAJUOa85AaS6
3sPqXGDLUL68TzDI06mN0/idhoIRBSJNinUfJpw4Ro9h/zNx1E//RfaHklSArW0rHrP6JnabQq/E
ywpKofyKtfWBjZrTJqD+xFD3BsXO9W35e9lAY/pTqzN6C7dC2o6xELYMw7a37e+7TEDqEPb1kk1i
VC/DX7v1veomIkT4wlTej+pa1pSQH6uN/huOhLuz4yEz/zZdnoDInKQyuWaZgdQV+2dfYBgbf+po
404pK0Ii/DBBTh6IKooZGzVmsyG/5MKNX6F9vw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
m7GZB0L29buPsJ1Ek3mn0JZeOjQx8lt0Zf7jS6gpC1kRKnUNBZcEOH1H1KjydFpvnyJQIsP03zy4
nPyJd1Ob6SYuCj7a4C6LyoazVN8spaoaBPLZ8J8G9mmkgO6ZcEwlrhWwJ7DvXLvgDlEpPB1/p4lE
JFj/aCorPcdOi3IIq4H5zSalGLsStid9zU7XEvvh18uUF/qWYMeccnYz6aePKyDsAMY2zEjOdkXc
3pEBGgv8QnltUE4Wauk7hp2GY2PEwuU4F1bPXuIGOrt75znY0TnNGk3QkJr3O9bLXxv3F0ue5ATZ
P2febum+bFNVI/fneEh460V+DaukdMvM61n0ZA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
nHJ6xKkP4lB5oh1M4wpeXl0l9Kj8WeGJSEaQxJpyExSqFmSLBaCUGWDmUUYh8Ijm30GUbsS9eTYq
34+Hz8w81SXhgnH8dgRecSEOHo4o5MCxOjvllpAbk4tOnMjSMLKy7xZpuCUu665/tPtBwE3oC89o
5C9Sfly4u9+gzJtWXzX5Nl/o2OXFsxSGPBttqBuGdMrni0TonVXDpqzIMHhXBNV8yJomdnF2XpaX
NAv9xzI9bmI3uYorc4Q/cpOg/08qPJJzbT7U6JRdYYPWgZeTN82fW+EQFT9vFuKxBbQK1UJ38vho
yY7bxqWePu9gcipRP84FLjG/mCR7rR9oSBY8kg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 61104)
`pragma protect data_block
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
`pragma protect end_protected
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
