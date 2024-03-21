// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Mar 21 17:10:37 2024
// Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/lukgla/Desktop/Vivado/Lab5a/Lab5a.gen/sources_1/ip/char_mem/char_mem_sim_netlist.v
// Design      : char_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_mem,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module char_mem
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [11:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;

  wire [11:0]addra;
  wire clka;
  wire [7:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_doutb_UNCONNECTED;
  wire [11:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "12" *) 
  (* C_ADDRB_WIDTH = "12" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.326399 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "char_mem.mem" *) 
  (* C_INIT_FILE_NAME = "char_mem.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "4096" *) 
  (* C_READ_DEPTH_B = "4096" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "4096" *) 
  (* C_WRITE_DEPTH_B = "4096" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  char_mem_blk_mem_gen_v8_4_7 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[7:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[11:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[11:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25472)
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
