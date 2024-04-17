// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Fri Apr  5 13:27:10 2024
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/lukgla/Documents/GitHub/PG_ISP_VIVADO/2018/8a/8a.srcs/sources_1/ip/singen/singen_stub.v
// Design      : singen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dds_compiler_v6_0_17,Vivado 2018.3" *)
module singen(aclk, aclken, aresetn, s_axis_config_tvalid, 
  s_axis_config_tdata, s_axis_config_tlast, m_axis_data_tvalid, m_axis_data_tdata, 
  event_s_config_tlast_missing, event_s_config_tlast_unexpected)
/* synthesis syn_black_box black_box_pad_pin="aclk,aclken,aresetn,s_axis_config_tvalid,s_axis_config_tdata[15:0],s_axis_config_tlast,m_axis_data_tvalid,m_axis_data_tdata[31:0],event_s_config_tlast_missing,event_s_config_tlast_unexpected" */;
  input aclk;
  input aclken;
  input aresetn;
  input s_axis_config_tvalid;
  input [15:0]s_axis_config_tdata;
  input s_axis_config_tlast;
  output m_axis_data_tvalid;
  output [31:0]m_axis_data_tdata;
  output event_s_config_tlast_missing;
  output event_s_config_tlast_unexpected;
endmodule
