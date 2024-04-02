// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Mar 30 18:32:58 2024
// Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/lukgla/Desktop/Vivado/2018/5b/5b.srcs/sources_1/ip/video_mem/video_mem_stub.v
// Design      : video_mem
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module video_mem(clka, wea, addra, dina, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[17:0],dina[0:0],clkb,addrb[17:0],doutb[0:0]" */;
  input clka;
  input [0:0]wea;
  input [17:0]addra;
  input [0:0]dina;
  input clkb;
  input [17:0]addrb;
  output [0:0]doutb;
endmodule
