// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Mon Mar 18 23:44:21 2024
// Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/lukgla/Desktop/Vivado/Lab4_RS232_reciver/Lab4_RS232_reciver.sim/sim_1/synth/timing/xsim/tb_time_synth.v
// Design      : rs232_reciver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clockDivider
   (clk_o,
    clk_i_IBUF_BUFG,
    AR);
  output clk_o;
  input clk_i_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire clk_i_IBUF_BUFG;
  wire clk_o;
  wire clk_out_i_1_n_0;
  wire [8:0]counter;
  wire [8:1]counter4;
  wire counter4_carry__0_n_0;
  wire counter4_carry__0_n_1;
  wire counter4_carry__0_n_2;
  wire counter4_carry__0_n_3;
  wire counter4_carry_n_0;
  wire counter4_carry_n_1;
  wire counter4_carry_n_2;
  wire counter4_carry_n_3;
  wire \counter[8]_i_3_n_0 ;
  wire \counter_reg[8]_i_2_n_3 ;
  wire [8:0]p_0_in;
  wire [3:1]\NLW_counter_reg[8]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[8]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h15111515EAEEEAEA)) 
    clk_out_i_1
       (.I0(\counter_reg[8]_i_2_n_3 ),
        .I1(counter4[8]),
        .I2(counter4[7]),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(counter4[6]),
        .I5(clk_o),
        .O(clk_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_out_i_1_n_0),
        .Q(clk_o));
  CARRY4 counter4_carry
       (.CI(1'b0),
        .CO({counter4_carry_n_0,counter4_carry_n_1,counter4_carry_n_2,counter4_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter4[4:1]),
        .S(counter[4:1]));
  CARRY4 counter4_carry__0
       (.CI(counter4_carry_n_0),
        .CO({counter4_carry__0_n_0,counter4_carry__0_n_1,counter4_carry__0_n_2,counter4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter4[8:5]),
        .S(counter[8:5]));
  LUT6 #(
    .INIT(64'h0111010101110111)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\counter_reg[8]_i_2_n_3 ),
        .I2(counter4[8]),
        .I3(counter4[7]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter4[6]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h0222020202220222)) 
    \counter[1]_i_1 
       (.I0(counter4[1]),
        .I1(\counter_reg[8]_i_2_n_3 ),
        .I2(counter4[8]),
        .I3(counter4[7]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter4[6]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h0222020202220222)) 
    \counter[2]_i_1 
       (.I0(counter4[2]),
        .I1(\counter_reg[8]_i_2_n_3 ),
        .I2(counter4[8]),
        .I3(counter4[7]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter4[6]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0222020202220222)) 
    \counter[3]_i_1 
       (.I0(counter4[3]),
        .I1(\counter_reg[8]_i_2_n_3 ),
        .I2(counter4[8]),
        .I3(counter4[7]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter4[6]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h0222020202220222)) 
    \counter[4]_i_1 
       (.I0(counter4[4]),
        .I1(\counter_reg[8]_i_2_n_3 ),
        .I2(counter4[8]),
        .I3(counter4[7]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter4[6]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h0222020202220222)) 
    \counter[5]_i_1 
       (.I0(counter4[5]),
        .I1(\counter_reg[8]_i_2_n_3 ),
        .I2(counter4[8]),
        .I3(counter4[7]),
        .I4(\counter[8]_i_3_n_0 ),
        .I5(counter4[6]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15110000)) 
    \counter[6]_i_1 
       (.I0(\counter_reg[8]_i_2_n_3 ),
        .I1(counter4[8]),
        .I2(counter4[7]),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(counter4[6]),
        .O(p_0_in[6]));
  LUT3 #(
    .INIT(8'h10)) 
    \counter[7]_i_1 
       (.I0(\counter_reg[8]_i_2_n_3 ),
        .I1(counter4[8]),
        .I2(counter4[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h04000404)) 
    \counter[8]_i_1 
       (.I0(\counter_reg[8]_i_2_n_3 ),
        .I1(counter4[8]),
        .I2(counter4[7]),
        .I3(\counter[8]_i_3_n_0 ),
        .I4(counter4[6]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h000000000000004F)) 
    \counter[8]_i_3 
       (.I0(counter4[1]),
        .I1(counter[0]),
        .I2(counter4[2]),
        .I3(counter4[4]),
        .I4(counter4[5]),
        .I5(counter4[3]),
        .O(\counter[8]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(counter[8]));
  CARRY4 \counter_reg[8]_i_2 
       (.CI(counter4_carry__0_n_0),
        .CO({\NLW_counter_reg[8]_i_2_CO_UNCONNECTED [3:1],\counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_reg[8]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* ORIG_REF_NAME = "clockDivider" *) 
module clockDivider__parameterized1
   (CLK,
    clk_i_IBUF_BUFG,
    AR);
  output CLK;
  input clk_i_IBUF_BUFG;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire clk_i_IBUF_BUFG;
  wire clk_out_i_1__0_n_0;
  wire counter4_carry__0_n_0;
  wire counter4_carry__0_n_1;
  wire counter4_carry__0_n_2;
  wire counter4_carry__0_n_3;
  wire counter4_carry__0_n_4;
  wire counter4_carry__0_n_5;
  wire counter4_carry__0_n_6;
  wire counter4_carry__0_n_7;
  wire counter4_carry__1_n_0;
  wire counter4_carry__1_n_1;
  wire counter4_carry__1_n_2;
  wire counter4_carry__1_n_3;
  wire counter4_carry__1_n_4;
  wire counter4_carry__1_n_5;
  wire counter4_carry__1_n_6;
  wire counter4_carry__1_n_7;
  wire counter4_carry__2_n_0;
  wire counter4_carry__2_n_1;
  wire counter4_carry__2_n_2;
  wire counter4_carry__2_n_3;
  wire counter4_carry__2_n_4;
  wire counter4_carry__2_n_5;
  wire counter4_carry__2_n_6;
  wire counter4_carry__2_n_7;
  wire counter4_carry_n_0;
  wire counter4_carry_n_1;
  wire counter4_carry_n_2;
  wire counter4_carry_n_3;
  wire counter4_carry_n_4;
  wire counter4_carry_n_5;
  wire counter4_carry_n_6;
  wire counter4_carry_n_7;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[16]_i_3_n_0 ;
  wire \counter[16]_i_4_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1__0_n_0 ;
  wire \counter[5]_i_1__0_n_0 ;
  wire \counter[6]_i_1__0_n_0 ;
  wire \counter[7]_i_1__0_n_0 ;
  wire \counter[8]_i_1__0_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[16]_i_2_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [3:1]\NLW_counter_reg[16]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[16]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h01555555FEAAAAAA)) 
    clk_out_i_1__0
       (.I0(\counter_reg[16]_i_2_n_3 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(counter4_carry__2_n_4),
        .I4(counter4_carry__2_n_5),
        .I5(CLK),
        .O(clk_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    clk_out_reg
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(clk_out_i_1__0_n_0),
        .Q(CLK));
  CARRY4 counter4_carry
       (.CI(1'b0),
        .CO({counter4_carry_n_0,counter4_carry_n_1,counter4_carry_n_2,counter4_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter4_carry_n_4,counter4_carry_n_5,counter4_carry_n_6,counter4_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  CARRY4 counter4_carry__0
       (.CI(counter4_carry_n_0),
        .CO({counter4_carry__0_n_0,counter4_carry__0_n_1,counter4_carry__0_n_2,counter4_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter4_carry__0_n_4,counter4_carry__0_n_5,counter4_carry__0_n_6,counter4_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  CARRY4 counter4_carry__1
       (.CI(counter4_carry__0_n_0),
        .CO({counter4_carry__1_n_0,counter4_carry__1_n_1,counter4_carry__1_n_2,counter4_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter4_carry__1_n_4,counter4_carry__1_n_5,counter4_carry__1_n_6,counter4_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  CARRY4 counter4_carry__2
       (.CI(counter4_carry__1_n_0),
        .CO({counter4_carry__2_n_0,counter4_carry__2_n_1,counter4_carry__2_n_2,counter4_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter4_carry__2_n_4,counter4_carry__2_n_5,counter4_carry__2_n_6,counter4_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'h0001111111111111)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[10]_i_1 
       (.I0(counter4_carry__1_n_6),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[11]_i_1 
       (.I0(counter4_carry__1_n_5),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[12]_i_1 
       (.I0(counter4_carry__1_n_4),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[13]_i_1 
       (.I0(counter4_carry__2_n_7),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[14]_i_1 
       (.I0(counter4_carry__2_n_6),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01550000)) 
    \counter[15]_i_1 
       (.I0(\counter_reg[16]_i_2_n_3 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(counter4_carry__2_n_4),
        .I4(counter4_carry__2_n_5),
        .O(\counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01005500)) 
    \counter[16]_i_1 
       (.I0(\counter_reg[16]_i_2_n_3 ),
        .I1(\counter[16]_i_3_n_0 ),
        .I2(\counter[16]_i_4_n_0 ),
        .I3(counter4_carry__2_n_4),
        .I4(counter4_carry__2_n_5),
        .O(\counter[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[16]_i_3 
       (.I0(counter4_carry__2_n_6),
        .I1(counter4_carry__2_n_7),
        .I2(counter4_carry__1_n_4),
        .I3(counter4_carry__1_n_5),
        .O(\counter[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \counter[16]_i_4 
       (.I0(counter4_carry__0_n_5),
        .I1(counter4_carry__0_n_6),
        .I2(counter4_carry__0_n_7),
        .I3(counter4_carry__0_n_4),
        .I4(counter4_carry__1_n_6),
        .I5(counter4_carry__1_n_7),
        .O(\counter[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[1]_i_1__0 
       (.I0(counter4_carry_n_7),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[2]_i_1__0 
       (.I0(counter4_carry_n_6),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[3]_i_1__0 
       (.I0(counter4_carry_n_5),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[4]_i_1__0 
       (.I0(counter4_carry_n_4),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[5]_i_1__0 
       (.I0(counter4_carry__0_n_7),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[6]_i_1__0 
       (.I0(counter4_carry__0_n_6),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[7]_i_1__0 
       (.I0(counter4_carry__0_n_5),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[8]_i_1__0 
       (.I0(counter4_carry__0_n_4),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0002222222222222)) 
    \counter[9]_i_1 
       (.I0(counter4_carry__1_n_7),
        .I1(\counter_reg[16]_i_2_n_3 ),
        .I2(\counter[16]_i_3_n_0 ),
        .I3(\counter[16]_i_4_n_0 ),
        .I4(counter4_carry__2_n_4),
        .I5(counter4_carry__2_n_5),
        .O(\counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[11]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[12]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[13]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[14]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[15]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[16]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  CARRY4 \counter_reg[16]_i_2 
       (.CI(counter4_carry__2_n_0),
        .CO({\NLW_counter_reg[16]_i_2_CO_UNCONNECTED [3:1],\counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_counter_reg[16]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[4]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_i_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
endmodule

module display
   (\led7_an_o_reg[3]_0 ,
    \led7_seg_o_reg[7]_0 ,
    clk_i_IBUF_BUFG,
    AR,
    Q);
  output [3:0]\led7_an_o_reg[3]_0 ;
  output [7:0]\led7_seg_o_reg[7]_0 ;
  input clk_i_IBUF_BUFG;
  input [0:0]AR;
  input [13:0]Q;

  wire [0:0]AR;
  wire [13:0]Q;
  wire [1:0]channel;
  wire clk_d10;
  wire clk_i_IBUF_BUFG;
  wire \led7_an_o[0]_i_1_n_0 ;
  wire \led7_an_o[1]_i_1_n_0 ;
  wire \led7_an_o[2]_i_1_n_0 ;
  wire \led7_an_o[3]_i_1_n_0 ;
  wire [3:0]\led7_an_o_reg[3]_0 ;
  wire \led7_seg_o[1]_i_1_n_0 ;
  wire \led7_seg_o[2]_i_1_n_0 ;
  wire \led7_seg_o[3]_i_1_n_0 ;
  wire \led7_seg_o[4]_i_1_n_0 ;
  wire \led7_seg_o[5]_i_1_n_0 ;
  wire \led7_seg_o[6]_i_1_n_0 ;
  wire \led7_seg_o[7]_i_1_n_0 ;
  wire [7:0]\led7_seg_o_reg[7]_0 ;
  wire [1:0]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \channel[0]_i_1 
       (.I0(channel[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \channel[1]_i_1 
       (.I0(channel[0]),
        .I1(channel[1]),
        .O(p_1_in[1]));
  FDCE #(
    .INIT(1'b1)) 
    \channel_reg[0] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[0]),
        .Q(channel[0]));
  FDCE #(
    .INIT(1'b1)) 
    \channel_reg[1] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(p_1_in[1]),
        .Q(channel[1]));
  clockDivider__parameterized1 clock_divider
       (.AR(AR),
        .CLK(clk_d10),
        .clk_i_IBUF_BUFG(clk_i_IBUF_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \led7_an_o[0]_i_1 
       (.I0(channel[1]),
        .I1(channel[0]),
        .O(\led7_an_o[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \led7_an_o[1]_i_1 
       (.I0(channel[1]),
        .I1(channel[0]),
        .O(\led7_an_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \led7_an_o[2]_i_1 
       (.I0(channel[1]),
        .I1(channel[0]),
        .O(\led7_an_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \led7_an_o[3]_i_1 
       (.I0(channel[1]),
        .I1(channel[0]),
        .O(\led7_an_o[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \led7_an_o_reg[0] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_an_o[0]_i_1_n_0 ),
        .Q(\led7_an_o_reg[3]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_an_o_reg[1] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_an_o[1]_i_1_n_0 ),
        .Q(\led7_an_o_reg[3]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_an_o_reg[2] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_an_o[2]_i_1_n_0 ),
        .Q(\led7_an_o_reg[3]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_an_o_reg[3] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_an_o[3]_i_1_n_0 ),
        .Q(\led7_an_o_reg[3]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[1]_i_1 
       (.I0(Q[7]),
        .I1(Q[0]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[2]_i_1 
       (.I0(Q[8]),
        .I1(Q[1]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[3]_i_1 
       (.I0(Q[9]),
        .I1(Q[2]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[4]_i_1 
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[5]_i_1 
       (.I0(Q[11]),
        .I1(Q[4]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[6]_i_1 
       (.I0(Q[12]),
        .I1(Q[5]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFCAF)) 
    \led7_seg_o[7]_i_1 
       (.I0(Q[13]),
        .I1(Q[6]),
        .I2(channel[1]),
        .I3(channel[0]),
        .O(\led7_seg_o[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[0] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(1'b1),
        .Q(\led7_seg_o_reg[7]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[1] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[1]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[2] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[2]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[3] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[3]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[4] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[4]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[5] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[5]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[6] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[6]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \led7_seg_o_reg[7] 
       (.C(clk_d10),
        .CE(1'b1),
        .CLR(AR),
        .D(\led7_seg_o[7]_i_1_n_0 ),
        .Q(\led7_seg_o_reg[7]_0 [7]));
endmodule

(* NotValidForBitStream *)
module rs232_reciver
   (clk_i,
    rst_i,
    RXD_i,
    led7_an_o,
    led7_seg_o);
  input clk_i;
  input rst_i;
  input RXD_i;
  output [3:0]led7_an_o;
  output [7:0]led7_seg_o;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire RXD_i;
  wire RXD_i_IBUF;
  wire [7:0]bit_buffer;
  wire \bit_buffer_reg_n_0_[0] ;
  wire \bit_buffer_reg_n_0_[1] ;
  wire \bit_buffer_reg_n_0_[2] ;
  wire \bit_buffer_reg_n_0_[3] ;
  wire bit_nr;
  wire \bit_nr[0]_i_1_n_0 ;
  wire \bit_nr[0]_i_2_n_0 ;
  wire \bit_nr[1]_i_1_n_0 ;
  wire \bit_nr[2]_i_1_n_0 ;
  wire \bit_nr[2]_i_2_n_0 ;
  wire \bit_nr_reg_n_0_[0] ;
  wire \bit_nr_reg_n_0_[1] ;
  wire \bit_nr_reg_n_0_[2] ;
  wire clk_i;
  wire clk_i_IBUF;
  wire clk_i_IBUF_BUFG;
  wire clk_o;
  wire clk_o_BUFG;
  wire \clock_16[0]_i_1_n_0 ;
  wire \clock_16[1]_i_1_n_0 ;
  wire \clock_16[2]_i_1_n_0 ;
  wire \clock_16[3]_i_1_n_0 ;
  wire \clock_16[3]_i_2_n_0 ;
  wire \clock_16_reg_n_0_[0] ;
  wire \clock_16_reg_n_0_[1] ;
  wire \clock_16_reg_n_0_[2] ;
  wire \clock_16_reg_n_0_[3] ;
  wire [7:1]data2;
  wire [7:1]data3;
  wire [23:23]digit_i;
  wire \digit_i[25]_i_1_n_0 ;
  wire \digit_i[26]_i_1_n_0 ;
  wire \digit_i[27]_i_1_n_0 ;
  wire \digit_i[28]_i_1_n_0 ;
  wire \digit_i[29]_i_1_n_0 ;
  wire \digit_i[30]_i_1_n_0 ;
  wire \digit_i[31]_i_2_n_0 ;
  wire [3:0]led7_an_o;
  wire [3:0]led7_an_o_OBUF;
  wire [7:0]led7_seg_o;
  wire [7:0]led7_seg_o_OBUF;
  wire rst_i;
  wire rst_i_IBUF;
  wire [3:0]sel0;
  wire [2:0]state;
  wire [6:0]tmp;

initial begin
 $sdf_annotate("tb_time_synth.sdf",,,,"tool_control");
end
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[2]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(state[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(\FSM_sequential_state[2]_i_2_n_0 ),
        .I3(state[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00FF4000)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(RXD_i_IBUF),
        .I1(state[0]),
        .I2(state[1]),
        .I3(\FSM_sequential_state[2]_i_2_n_0 ),
        .I4(state[2]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAAAEAAAAAAA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\bit_nr_reg_n_0_[1] ),
        .I2(\bit_nr_reg_n_0_[0] ),
        .I3(\bit_nr_reg_n_0_[2] ),
        .I4(\bit_nr[0]_i_2_n_0 ),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAAAAABBAABB)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state[2]),
        .I1(RXD_i_IBUF),
        .I2(\FSM_sequential_state[2]_i_4_n_0 ),
        .I3(state[1]),
        .I4(\clock_16_reg_n_0_[3] ),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\clock_16_reg_n_0_[1] ),
        .I1(\clock_16_reg_n_0_[0] ),
        .I2(\clock_16_reg_n_0_[2] ),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "start:001,recive:010,stop:011,error:100,listen:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:001,recive:010,stop:011,error:100,listen:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "start:001,recive:010,stop:011,error:100,listen:000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state[2]),
        .R(1'b0));
  IBUF RXD_i_IBUF_inst
       (.I(RXD_i),
        .O(RXD_i_IBUF));
  clockDivider baudrate_comp
       (.AR(rst_i_IBUF),
        .clk_i_IBUF_BUFG(clk_i_IBUF_BUFG),
        .clk_o(clk_o));
  LUT6 #(
    .INIT(64'h0000000000000100)) 
    \bit_buffer[0]_i_1 
       (.I0(\bit_nr_reg_n_0_[1] ),
        .I1(\bit_nr_reg_n_0_[0] ),
        .I2(\bit_nr_reg_n_0_[2] ),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(bit_buffer[0]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \bit_buffer[1]_i_1 
       (.I0(\bit_nr_reg_n_0_[1] ),
        .I1(\bit_nr_reg_n_0_[0] ),
        .I2(\bit_nr_reg_n_0_[2] ),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(bit_buffer[1]));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \bit_buffer[2]_i_1 
       (.I0(\bit_nr_reg_n_0_[0] ),
        .I1(\bit_nr_reg_n_0_[1] ),
        .I2(\bit_nr_reg_n_0_[2] ),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(bit_buffer[2]));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \bit_buffer[3]_i_1 
       (.I0(\bit_nr_reg_n_0_[2] ),
        .I1(\bit_nr[0]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\bit_nr_reg_n_0_[0] ),
        .I5(\bit_nr_reg_n_0_[1] ),
        .O(bit_buffer[3]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \bit_buffer[4]_i_1 
       (.I0(\bit_nr_reg_n_0_[1] ),
        .I1(\bit_nr_reg_n_0_[0] ),
        .I2(\bit_nr_reg_n_0_[2] ),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(bit_buffer[4]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \bit_buffer[5]_i_1 
       (.I0(\bit_nr_reg_n_0_[1] ),
        .I1(\bit_nr_reg_n_0_[0] ),
        .I2(\bit_nr_reg_n_0_[2] ),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(bit_buffer[5]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \bit_buffer[6]_i_1 
       (.I0(\bit_nr_reg_n_0_[0] ),
        .I1(\bit_nr_reg_n_0_[1] ),
        .I2(\bit_nr_reg_n_0_[2] ),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .I4(state[2]),
        .I5(state[0]),
        .O(bit_buffer[6]));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \bit_buffer[7]_i_1 
       (.I0(\bit_nr_reg_n_0_[2] ),
        .I1(\bit_nr[0]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[0]),
        .I4(\bit_nr_reg_n_0_[0] ),
        .I5(\bit_nr_reg_n_0_[1] ),
        .O(bit_buffer[7]));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[0] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[0]),
        .D(RXD_i_IBUF),
        .Q(\bit_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[1] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[1]),
        .D(RXD_i_IBUF),
        .Q(\bit_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[2] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[2]),
        .D(RXD_i_IBUF),
        .Q(\bit_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[3] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[3]),
        .D(RXD_i_IBUF),
        .Q(\bit_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[4] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[4]),
        .D(RXD_i_IBUF),
        .Q(sel0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[5] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[5]),
        .D(RXD_i_IBUF),
        .Q(sel0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[6] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[6]),
        .D(RXD_i_IBUF),
        .Q(sel0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_buffer_reg[7] 
       (.C(clk_o_BUFG),
        .CE(bit_buffer[7]),
        .D(RXD_i_IBUF),
        .Q(sel0[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF7FFF4000A0008)) 
    \bit_nr[0]_i_1 
       (.I0(\bit_nr[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(RXD_i_IBUF),
        .I5(\bit_nr_reg_n_0_[0] ),
        .O(\bit_nr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \bit_nr[0]_i_2 
       (.I0(\clock_16_reg_n_0_[3] ),
        .I1(\clock_16_reg_n_0_[1] ),
        .I2(\clock_16_reg_n_0_[0] ),
        .I3(\clock_16_reg_n_0_[2] ),
        .I4(state[1]),
        .O(\bit_nr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h020EFFFF0E020000)) 
    \bit_nr[1]_i_1 
       (.I0(RXD_i_IBUF),
        .I1(state[1]),
        .I2(state[2]),
        .I3(\bit_nr_reg_n_0_[0] ),
        .I4(bit_nr),
        .I5(\bit_nr_reg_n_0_[1] ),
        .O(\bit_nr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0C0AFFFF030A0000)) 
    \bit_nr[2]_i_1 
       (.I0(RXD_i_IBUF),
        .I1(\bit_nr[2]_i_2_n_0 ),
        .I2(state[2]),
        .I3(state[1]),
        .I4(bit_nr),
        .I5(\bit_nr_reg_n_0_[2] ),
        .O(\bit_nr[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \bit_nr[2]_i_2 
       (.I0(\bit_nr_reg_n_0_[1] ),
        .I1(\bit_nr_reg_n_0_[0] ),
        .O(\bit_nr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000A000B)) 
    \bit_nr[2]_i_3 
       (.I0(\bit_nr[0]_i_2_n_0 ),
        .I1(state[1]),
        .I2(state[2]),
        .I3(state[0]),
        .I4(RXD_i_IBUF),
        .O(bit_nr));
  FDRE #(
    .INIT(1'b0)) 
    \bit_nr_reg[0] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\bit_nr[0]_i_1_n_0 ),
        .Q(\bit_nr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_nr_reg[1] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\bit_nr[1]_i_1_n_0 ),
        .Q(\bit_nr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \bit_nr_reg[2] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\bit_nr[2]_i_1_n_0 ),
        .Q(\bit_nr_reg_n_0_[2] ),
        .R(1'b0));
  BUFG clk_i_IBUF_BUFG_inst
       (.I(clk_i_IBUF),
        .O(clk_i_IBUF_BUFG));
  IBUF clk_i_IBUF_inst
       (.I(clk_i),
        .O(clk_i_IBUF));
  BUFG clk_o_BUFG_inst
       (.I(clk_o),
        .O(clk_o_BUFG));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \clock_16[0]_i_1 
       (.I0(\clock_16_reg_n_0_[0] ),
        .O(\clock_16[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clock_16[1]_i_1 
       (.I0(\clock_16_reg_n_0_[0] ),
        .I1(\clock_16_reg_n_0_[1] ),
        .O(\clock_16[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clock_16[2]_i_1 
       (.I0(\clock_16_reg_n_0_[1] ),
        .I1(\clock_16_reg_n_0_[0] ),
        .I2(\clock_16_reg_n_0_[2] ),
        .O(\clock_16[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF0C1)) 
    \clock_16[3]_i_1 
       (.I0(RXD_i_IBUF),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .O(\clock_16[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \clock_16[3]_i_2 
       (.I0(\clock_16_reg_n_0_[3] ),
        .I1(\clock_16_reg_n_0_[1] ),
        .I2(\clock_16_reg_n_0_[0] ),
        .I3(\clock_16_reg_n_0_[2] ),
        .O(\clock_16[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_16_reg[0] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\clock_16[0]_i_1_n_0 ),
        .Q(\clock_16_reg_n_0_[0] ),
        .R(\clock_16[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_16_reg[1] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\clock_16[1]_i_1_n_0 ),
        .Q(\clock_16_reg_n_0_[1] ),
        .R(\clock_16[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_16_reg[2] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\clock_16[2]_i_1_n_0 ),
        .Q(\clock_16_reg_n_0_[2] ),
        .R(\clock_16[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clock_16_reg[3] 
       (.C(clk_o_BUFG),
        .CE(1'b1),
        .D(\clock_16[3]_i_2_n_0 ),
        .Q(\clock_16_reg_n_0_[3] ),
        .R(\clock_16[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \digit_i[17]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[2] ),
        .I2(\bit_buffer_reg_n_0_[0] ),
        .I3(\bit_buffer_reg_n_0_[1] ),
        .O(tmp[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \digit_i[18]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[2] ),
        .I2(\bit_buffer_reg_n_0_[1] ),
        .I3(\bit_buffer_reg_n_0_[0] ),
        .O(tmp[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \digit_i[19]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[0] ),
        .I2(\bit_buffer_reg_n_0_[1] ),
        .I3(\bit_buffer_reg_n_0_[2] ),
        .O(tmp[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \digit_i[20]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[2] ),
        .I2(\bit_buffer_reg_n_0_[0] ),
        .I3(\bit_buffer_reg_n_0_[1] ),
        .O(tmp[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \digit_i[21]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[1] ),
        .I2(\bit_buffer_reg_n_0_[2] ),
        .I3(\bit_buffer_reg_n_0_[0] ),
        .O(tmp[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \digit_i[22]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[2] ),
        .I2(\bit_buffer_reg_n_0_[0] ),
        .I3(\bit_buffer_reg_n_0_[1] ),
        .O(tmp[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \digit_i[23]_i_1 
       (.I0(\bit_buffer_reg_n_0_[3] ),
        .I1(\bit_buffer_reg_n_0_[0] ),
        .I2(\bit_buffer_reg_n_0_[2] ),
        .I3(\bit_buffer_reg_n_0_[1] ),
        .O(tmp[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \digit_i[25]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\digit_i[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \digit_i[26]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(\digit_i[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \digit_i[27]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(\digit_i[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \digit_i[28]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\digit_i[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \digit_i[29]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(\digit_i[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \digit_i[30]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(\digit_i[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0800)) 
    \digit_i[31]_i_1 
       (.I0(state[0]),
        .I1(RXD_i_IBUF),
        .I2(state[2]),
        .I3(\bit_nr[0]_i_2_n_0 ),
        .O(digit_i));
  LUT4 #(
    .INIT(16'h4025)) 
    \digit_i[31]_i_2 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(\digit_i[31]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[17] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[0]),
        .Q(data2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[18] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[1]),
        .Q(data2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[19] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[2]),
        .Q(data2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[20] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[3]),
        .Q(data2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[21] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[4]),
        .Q(data2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[22] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[5]),
        .Q(data2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[23] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(tmp[6]),
        .Q(data2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[25] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[25]_i_1_n_0 ),
        .Q(data3[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[26] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[26]_i_1_n_0 ),
        .Q(data3[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[27] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[27]_i_1_n_0 ),
        .Q(data3[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[28] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[28]_i_1_n_0 ),
        .Q(data3[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[29] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[29]_i_1_n_0 ),
        .Q(data3[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[30] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[30]_i_1_n_0 ),
        .Q(data3[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \digit_i_reg[31] 
       (.C(clk_o_BUFG),
        .CE(digit_i),
        .D(\digit_i[31]_i_2_n_0 ),
        .Q(data3[7]),
        .R(1'b0));
  display display_comp
       (.AR(rst_i_IBUF),
        .Q({data3,data2}),
        .clk_i_IBUF_BUFG(clk_i_IBUF_BUFG),
        .\led7_an_o_reg[3]_0 (led7_an_o_OBUF),
        .\led7_seg_o_reg[7]_0 (led7_seg_o_OBUF));
  OBUF \led7_an_o_OBUF[0]_inst 
       (.I(led7_an_o_OBUF[0]),
        .O(led7_an_o[0]));
  OBUF \led7_an_o_OBUF[1]_inst 
       (.I(led7_an_o_OBUF[1]),
        .O(led7_an_o[1]));
  OBUF \led7_an_o_OBUF[2]_inst 
       (.I(led7_an_o_OBUF[2]),
        .O(led7_an_o[2]));
  OBUF \led7_an_o_OBUF[3]_inst 
       (.I(led7_an_o_OBUF[3]),
        .O(led7_an_o[3]));
  OBUF \led7_seg_o_OBUF[0]_inst 
       (.I(led7_seg_o_OBUF[0]),
        .O(led7_seg_o[0]));
  OBUF \led7_seg_o_OBUF[1]_inst 
       (.I(led7_seg_o_OBUF[1]),
        .O(led7_seg_o[1]));
  OBUF \led7_seg_o_OBUF[2]_inst 
       (.I(led7_seg_o_OBUF[2]),
        .O(led7_seg_o[2]));
  OBUF \led7_seg_o_OBUF[3]_inst 
       (.I(led7_seg_o_OBUF[3]),
        .O(led7_seg_o[3]));
  OBUF \led7_seg_o_OBUF[4]_inst 
       (.I(led7_seg_o_OBUF[4]),
        .O(led7_seg_o[4]));
  OBUF \led7_seg_o_OBUF[5]_inst 
       (.I(led7_seg_o_OBUF[5]),
        .O(led7_seg_o[5]));
  OBUF \led7_seg_o_OBUF[6]_inst 
       (.I(led7_seg_o_OBUF[6]),
        .O(led7_seg_o[6]));
  OBUF \led7_seg_o_OBUF[7]_inst 
       (.I(led7_seg_o_OBUF[7]),
        .O(led7_seg_o[7]));
  IBUF rst_i_IBUF_inst
       (.I(rst_i),
        .O(rst_i_IBUF));
endmodule
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
