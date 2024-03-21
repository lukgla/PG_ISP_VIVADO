// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Mar 21 17:10:36 2024
// Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ char_mem_sim_netlist.v
// Design      : char_mem
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "char_mem,blk_mem_gen_v8_4_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_7,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_7 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 25536)
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
