-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Mon Mar 18 23:56:40 2024
-- Host        : DESKTOP-L54QMU3 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/lukgla/Desktop/Vivado/Lab4_RS232_reciver/Lab4_RS232_reciver.sim/sim_1/synth/func/xsim/tb_func_synth.vhd
-- Design      : rs232_reciver
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clockDivider is
  port (
    clk_o : out STD_LOGIC;
    clk_i_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end clockDivider;

architecture STRUCTURE of clockDivider is
  signal \^clk_o\ : STD_LOGIC;
  signal clk_out_i_1_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal counter4 : STD_LOGIC_VECTOR ( 8 downto 1 );
  signal \counter4_carry__0_n_0\ : STD_LOGIC;
  signal \counter4_carry__0_n_1\ : STD_LOGIC;
  signal \counter4_carry__0_n_2\ : STD_LOGIC;
  signal \counter4_carry__0_n_3\ : STD_LOGIC;
  signal counter4_carry_n_0 : STD_LOGIC;
  signal counter4_carry_n_1 : STD_LOGIC;
  signal counter4_carry_n_2 : STD_LOGIC;
  signal counter4_carry_n_3 : STD_LOGIC;
  signal \counter[8]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \NLW_counter_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[8]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[8]_i_1\ : label is "soft_lutpair0";
begin
  clk_o <= \^clk_o\;
clk_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"15111515EAEEEAEA"
    )
        port map (
      I0 => \counter_reg[8]_i_2_n_3\,
      I1 => counter4(8),
      I2 => counter4(7),
      I3 => \counter[8]_i_3_n_0\,
      I4 => counter4(6),
      I5 => \^clk_o\,
      O => clk_out_i_1_n_0
    );
clk_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => clk_out_i_1_n_0,
      Q => \^clk_o\
    );
counter4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter4_carry_n_0,
      CO(2) => counter4_carry_n_1,
      CO(1) => counter4_carry_n_2,
      CO(0) => counter4_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter4(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter4_carry_n_0,
      CO(3) => \counter4_carry__0_n_0\,
      CO(2) => \counter4_carry__0_n_1\,
      CO(1) => \counter4_carry__0_n_2\,
      CO(0) => \counter4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => counter4(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111010101110111"
    )
        port map (
      I0 => counter(0),
      I1 => \counter_reg[8]_i_2_n_3\,
      I2 => counter4(8),
      I3 => counter4(7),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter4(6),
      O => p_0_in(0)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222020202220222"
    )
        port map (
      I0 => counter4(1),
      I1 => \counter_reg[8]_i_2_n_3\,
      I2 => counter4(8),
      I3 => counter4(7),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter4(6),
      O => p_0_in(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222020202220222"
    )
        port map (
      I0 => counter4(2),
      I1 => \counter_reg[8]_i_2_n_3\,
      I2 => counter4(8),
      I3 => counter4(7),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter4(6),
      O => p_0_in(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222020202220222"
    )
        port map (
      I0 => counter4(3),
      I1 => \counter_reg[8]_i_2_n_3\,
      I2 => counter4(8),
      I3 => counter4(7),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter4(6),
      O => p_0_in(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222020202220222"
    )
        port map (
      I0 => counter4(4),
      I1 => \counter_reg[8]_i_2_n_3\,
      I2 => counter4(8),
      I3 => counter4(7),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter4(6),
      O => p_0_in(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0222020202220222"
    )
        port map (
      I0 => counter4(5),
      I1 => \counter_reg[8]_i_2_n_3\,
      I2 => counter4(8),
      I3 => counter4(7),
      I4 => \counter[8]_i_3_n_0\,
      I5 => counter4(6),
      O => p_0_in(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15110000"
    )
        port map (
      I0 => \counter_reg[8]_i_2_n_3\,
      I1 => counter4(8),
      I2 => counter4(7),
      I3 => \counter[8]_i_3_n_0\,
      I4 => counter4(6),
      O => p_0_in(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \counter_reg[8]_i_2_n_3\,
      I1 => counter4(8),
      I2 => counter4(7),
      O => p_0_in(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000404"
    )
        port map (
      I0 => \counter_reg[8]_i_2_n_3\,
      I1 => counter4(8),
      I2 => counter4(7),
      I3 => \counter[8]_i_3_n_0\,
      I4 => counter4(6),
      O => p_0_in(8)
    );
\counter[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000004F"
    )
        port map (
      I0 => counter4(1),
      I1 => counter(0),
      I2 => counter4(2),
      I3 => counter4(4),
      I4 => counter4(5),
      I5 => counter4(3),
      O => \counter[8]_i_3_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(0),
      Q => counter(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => counter(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(2),
      Q => counter(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(8),
      Q => counter(8)
    );
\counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter4_carry__0_n_0\,
      CO(3 downto 1) => \NLW_counter_reg[8]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_reg[8]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \clockDivider__parameterized1\ is
  port (
    CLK : out STD_LOGIC;
    clk_i_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \clockDivider__parameterized1\ : entity is "clockDivider";
end \clockDivider__parameterized1\;

architecture STRUCTURE of \clockDivider__parameterized1\ is
  signal \^clk\ : STD_LOGIC;
  signal \clk_out_i_1__0_n_0\ : STD_LOGIC;
  signal \counter4_carry__0_n_0\ : STD_LOGIC;
  signal \counter4_carry__0_n_1\ : STD_LOGIC;
  signal \counter4_carry__0_n_2\ : STD_LOGIC;
  signal \counter4_carry__0_n_3\ : STD_LOGIC;
  signal \counter4_carry__0_n_4\ : STD_LOGIC;
  signal \counter4_carry__0_n_5\ : STD_LOGIC;
  signal \counter4_carry__0_n_6\ : STD_LOGIC;
  signal \counter4_carry__0_n_7\ : STD_LOGIC;
  signal \counter4_carry__1_n_0\ : STD_LOGIC;
  signal \counter4_carry__1_n_1\ : STD_LOGIC;
  signal \counter4_carry__1_n_2\ : STD_LOGIC;
  signal \counter4_carry__1_n_3\ : STD_LOGIC;
  signal \counter4_carry__1_n_4\ : STD_LOGIC;
  signal \counter4_carry__1_n_5\ : STD_LOGIC;
  signal \counter4_carry__1_n_6\ : STD_LOGIC;
  signal \counter4_carry__1_n_7\ : STD_LOGIC;
  signal \counter4_carry__2_n_0\ : STD_LOGIC;
  signal \counter4_carry__2_n_1\ : STD_LOGIC;
  signal \counter4_carry__2_n_2\ : STD_LOGIC;
  signal \counter4_carry__2_n_3\ : STD_LOGIC;
  signal \counter4_carry__2_n_4\ : STD_LOGIC;
  signal \counter4_carry__2_n_5\ : STD_LOGIC;
  signal \counter4_carry__2_n_6\ : STD_LOGIC;
  signal \counter4_carry__2_n_7\ : STD_LOGIC;
  signal counter4_carry_n_0 : STD_LOGIC;
  signal counter4_carry_n_1 : STD_LOGIC;
  signal counter4_carry_n_2 : STD_LOGIC;
  signal counter4_carry_n_3 : STD_LOGIC;
  signal counter4_carry_n_4 : STD_LOGIC;
  signal counter4_carry_n_5 : STD_LOGIC;
  signal counter4_carry_n_6 : STD_LOGIC;
  signal counter4_carry_n_7 : STD_LOGIC;
  signal \counter[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_3_n_0\ : STD_LOGIC;
  signal \counter[16]_i_4_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_counter_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter_reg[16]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[15]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[16]_i_1\ : label is "soft_lutpair1";
begin
  CLK <= \^clk\;
\clk_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01555555FEAAAAAA"
    )
        port map (
      I0 => \counter_reg[16]_i_2_n_3\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter4_carry__2_n_4\,
      I4 => \counter4_carry__2_n_5\,
      I5 => \^clk\,
      O => \clk_out_i_1__0_n_0\
    );
clk_out_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \clk_out_i_1__0_n_0\,
      Q => \^clk\
    );
counter4_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter4_carry_n_0,
      CO(2) => counter4_carry_n_1,
      CO(1) => counter4_carry_n_2,
      CO(0) => counter4_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => counter4_carry_n_4,
      O(2) => counter4_carry_n_5,
      O(1) => counter4_carry_n_6,
      O(0) => counter4_carry_n_7,
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter4_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter4_carry_n_0,
      CO(3) => \counter4_carry__0_n_0\,
      CO(2) => \counter4_carry__0_n_1\,
      CO(1) => \counter4_carry__0_n_2\,
      CO(0) => \counter4_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter4_carry__0_n_4\,
      O(2) => \counter4_carry__0_n_5\,
      O(1) => \counter4_carry__0_n_6\,
      O(0) => \counter4_carry__0_n_7\,
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter4_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter4_carry__0_n_0\,
      CO(3) => \counter4_carry__1_n_0\,
      CO(2) => \counter4_carry__1_n_1\,
      CO(1) => \counter4_carry__1_n_2\,
      CO(0) => \counter4_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter4_carry__1_n_4\,
      O(2) => \counter4_carry__1_n_5\,
      O(1) => \counter4_carry__1_n_6\,
      O(0) => \counter4_carry__1_n_7\,
      S(3) => \counter_reg_n_0_[12]\,
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter4_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter4_carry__1_n_0\,
      CO(3) => \counter4_carry__2_n_0\,
      CO(2) => \counter4_carry__2_n_1\,
      CO(1) => \counter4_carry__2_n_2\,
      CO(0) => \counter4_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter4_carry__2_n_4\,
      O(2) => \counter4_carry__2_n_5\,
      O(1) => \counter4_carry__2_n_6\,
      O(0) => \counter4_carry__2_n_7\,
      S(3) => \counter_reg_n_0_[16]\,
      S(2) => \counter_reg_n_0_[15]\,
      S(1) => \counter_reg_n_0_[14]\,
      S(0) => \counter_reg_n_0_[13]\
    );
\counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001111111111111"
    )
        port map (
      I0 => \counter_reg_n_0_[0]\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[0]_i_1__0_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__1_n_6\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__1_n_5\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__1_n_4\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__2_n_7\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__2_n_6\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01550000"
    )
        port map (
      I0 => \counter_reg[16]_i_2_n_3\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter4_carry__2_n_4\,
      I4 => \counter4_carry__2_n_5\,
      O => \counter[15]_i_1_n_0\
    );
\counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01005500"
    )
        port map (
      I0 => \counter_reg[16]_i_2_n_3\,
      I1 => \counter[16]_i_3_n_0\,
      I2 => \counter[16]_i_4_n_0\,
      I3 => \counter4_carry__2_n_4\,
      I4 => \counter4_carry__2_n_5\,
      O => \counter[16]_i_1_n_0\
    );
\counter[16]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter4_carry__2_n_6\,
      I1 => \counter4_carry__2_n_7\,
      I2 => \counter4_carry__1_n_4\,
      I3 => \counter4_carry__1_n_5\,
      O => \counter[16]_i_3_n_0\
    );
\counter[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFA8000000000000"
    )
        port map (
      I0 => \counter4_carry__0_n_5\,
      I1 => \counter4_carry__0_n_6\,
      I2 => \counter4_carry__0_n_7\,
      I3 => \counter4_carry__0_n_4\,
      I4 => \counter4_carry__1_n_6\,
      I5 => \counter4_carry__1_n_7\,
      O => \counter[16]_i_4_n_0\
    );
\counter[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => counter4_carry_n_7,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[1]_i_1__0_n_0\
    );
\counter[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => counter4_carry_n_6,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[2]_i_1__0_n_0\
    );
\counter[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => counter4_carry_n_5,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[3]_i_1__0_n_0\
    );
\counter[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => counter4_carry_n_4,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[4]_i_1__0_n_0\
    );
\counter[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__0_n_7\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[5]_i_1__0_n_0\
    );
\counter[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__0_n_6\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[6]_i_1__0_n_0\
    );
\counter[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__0_n_5\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[7]_i_1__0_n_0\
    );
\counter[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__0_n_4\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[8]_i_1__0_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002222222222222"
    )
        port map (
      I0 => \counter4_carry__1_n_7\,
      I1 => \counter_reg[16]_i_2_n_3\,
      I2 => \counter[16]_i_3_n_0\,
      I3 => \counter[16]_i_4_n_0\,
      I4 => \counter4_carry__2_n_4\,
      I5 => \counter4_carry__2_n_5\,
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[0]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[0]\
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[10]_i_1_n_0\,
      Q => \counter_reg_n_0_[10]\
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[11]_i_1_n_0\,
      Q => \counter_reg_n_0_[11]\
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[12]_i_1_n_0\,
      Q => \counter_reg_n_0_[12]\
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[13]_i_1_n_0\,
      Q => \counter_reg_n_0_[13]\
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[14]_i_1_n_0\,
      Q => \counter_reg_n_0_[14]\
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[15]_i_1_n_0\,
      Q => \counter_reg_n_0_[15]\
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[16]_i_1_n_0\,
      Q => \counter_reg_n_0_[16]\
    );
\counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter4_carry__2_n_0\,
      CO(3 downto 1) => \NLW_counter_reg[16]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_counter_reg[16]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[1]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[1]\
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[2]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[2]\
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[3]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[3]\
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[4]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[4]\
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[5]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[5]\
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[6]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[6]\
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[7]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[7]\
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[8]_i_1__0_n_0\,
      Q => \counter_reg_n_0_[8]\
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_i_IBUF_BUFG,
      CE => '1',
      CLR => AR(0),
      D => \counter[9]_i_1_n_0\,
      Q => \counter_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity display is
  port (
    \led7_an_o_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \led7_seg_o_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    clk_i_IBUF_BUFG : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end display;

architecture STRUCTURE of display is
  signal channel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_d10 : STD_LOGIC;
  signal \led7_an_o[0]_i_1_n_0\ : STD_LOGIC;
  signal \led7_an_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \led7_an_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \led7_an_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[1]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[2]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[3]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[4]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[5]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[6]_i_1_n_0\ : STD_LOGIC;
  signal \led7_seg_o[7]_i_1_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \channel[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \channel[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led7_an_o[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led7_an_o[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led7_an_o[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led7_an_o[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led7_seg_o[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led7_seg_o[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led7_seg_o[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led7_seg_o[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \led7_seg_o[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \led7_seg_o[6]_i_1\ : label is "soft_lutpair7";
begin
\channel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => channel(0),
      O => p_1_in(0)
    );
\channel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => channel(0),
      I1 => channel(1),
      O => p_1_in(1)
    );
\channel_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(0),
      Q => channel(0)
    );
\channel_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => p_1_in(1),
      Q => channel(1)
    );
clock_divider: entity work.\clockDivider__parameterized1\
     port map (
      AR(0) => AR(0),
      CLK => clk_d10,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG
    );
\led7_an_o[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => channel(1),
      I1 => channel(0),
      O => \led7_an_o[0]_i_1_n_0\
    );
\led7_an_o[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => channel(1),
      I1 => channel(0),
      O => \led7_an_o[1]_i_1_n_0\
    );
\led7_an_o[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => channel(1),
      I1 => channel(0),
      O => \led7_an_o[2]_i_1_n_0\
    );
\led7_an_o[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => channel(1),
      I1 => channel(0),
      O => \led7_an_o[3]_i_1_n_0\
    );
\led7_an_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_an_o[0]_i_1_n_0\,
      Q => \led7_an_o_reg[3]_0\(0)
    );
\led7_an_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_an_o[1]_i_1_n_0\,
      Q => \led7_an_o_reg[3]_0\(1)
    );
\led7_an_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_an_o[2]_i_1_n_0\,
      Q => \led7_an_o_reg[3]_0\(2)
    );
\led7_an_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_an_o[3]_i_1_n_0\,
      Q => \led7_an_o_reg[3]_0\(3)
    );
\led7_seg_o[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(7),
      I1 => Q(0),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[1]_i_1_n_0\
    );
\led7_seg_o[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(8),
      I1 => Q(1),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[2]_i_1_n_0\
    );
\led7_seg_o[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(9),
      I1 => Q(2),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[3]_i_1_n_0\
    );
\led7_seg_o[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(10),
      I1 => Q(3),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[4]_i_1_n_0\
    );
\led7_seg_o[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(11),
      I1 => Q(4),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[5]_i_1_n_0\
    );
\led7_seg_o[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(12),
      I1 => Q(5),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[6]_i_1_n_0\
    );
\led7_seg_o[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FCAF"
    )
        port map (
      I0 => Q(13),
      I1 => Q(6),
      I2 => channel(1),
      I3 => channel(0),
      O => \led7_seg_o[7]_i_1_n_0\
    );
\led7_seg_o_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => '1',
      Q => \led7_seg_o_reg[7]_0\(0)
    );
\led7_seg_o_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[1]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(1)
    );
\led7_seg_o_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[2]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(2)
    );
\led7_seg_o_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[3]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(3)
    );
\led7_seg_o_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[4]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(4)
    );
\led7_seg_o_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[5]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(5)
    );
\led7_seg_o_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[6]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(6)
    );
\led7_seg_o_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_d10,
      CE => '1',
      CLR => AR(0),
      D => \led7_seg_o[7]_i_1_n_0\,
      Q => \led7_seg_o_reg[7]_0\(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rs232_reciver is
  port (
    clk_i : in STD_LOGIC;
    rst_i : in STD_LOGIC;
    RXD_i : in STD_LOGIC;
    led7_an_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led7_seg_o : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rs232_reciver : entity is true;
end rs232_reciver;

architecture STRUCTURE of rs232_reciver is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal RXD_i_IBUF : STD_LOGIC;
  signal bit_buffer : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \bit_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal bit_nr : STD_LOGIC;
  signal \bit_nr[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_nr[0]_i_2_n_0\ : STD_LOGIC;
  signal \bit_nr[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_nr[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_nr[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_nr_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_nr_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_nr_reg_n_0_[2]\ : STD_LOGIC;
  signal clk_i_IBUF : STD_LOGIC;
  signal clk_i_IBUF_BUFG : STD_LOGIC;
  signal clk_o : STD_LOGIC;
  signal clk_o_BUFG : STD_LOGIC;
  signal \clock_16[0]_i_1_n_0\ : STD_LOGIC;
  signal \clock_16[1]_i_1_n_0\ : STD_LOGIC;
  signal \clock_16[2]_i_1_n_0\ : STD_LOGIC;
  signal \clock_16[3]_i_1_n_0\ : STD_LOGIC;
  signal \clock_16[3]_i_2_n_0\ : STD_LOGIC;
  signal \clock_16_reg_n_0_[0]\ : STD_LOGIC;
  signal \clock_16_reg_n_0_[1]\ : STD_LOGIC;
  signal \clock_16_reg_n_0_[2]\ : STD_LOGIC;
  signal \clock_16_reg_n_0_[3]\ : STD_LOGIC;
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal data3 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal digit_i : STD_LOGIC_VECTOR ( 23 to 23 );
  signal \digit_i[25]_i_1_n_0\ : STD_LOGIC;
  signal \digit_i[26]_i_1_n_0\ : STD_LOGIC;
  signal \digit_i[27]_i_1_n_0\ : STD_LOGIC;
  signal \digit_i[28]_i_1_n_0\ : STD_LOGIC;
  signal \digit_i[29]_i_1_n_0\ : STD_LOGIC;
  signal \digit_i[30]_i_1_n_0\ : STD_LOGIC;
  signal \digit_i[31]_i_2_n_0\ : STD_LOGIC;
  signal led7_an_o_OBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal led7_seg_o_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_i_IBUF : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal tmp : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_4\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "start:001,recive:010,stop:011,error:100,listen:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "start:001,recive:010,stop:011,error:100,listen:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "start:001,recive:010,stop:011,error:100,listen:000";
  attribute SOFT_HLUTNM of \bit_nr[0]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \clock_16[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clock_16[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \clock_16[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \clock_16[3]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \digit_i[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \digit_i[18]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \digit_i[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \digit_i[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \digit_i[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \digit_i[22]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \digit_i[25]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \digit_i[26]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \digit_i[27]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \digit_i[28]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \digit_i[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \digit_i[30]_i_1\ : label is "soft_lutpair15";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => state(2),
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => state(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_2_n_0\,
      I3 => state(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF4000"
    )
        port map (
      I0 => RXD_i_IBUF,
      I1 => state(0),
      I2 => state(1),
      I3 => \FSM_sequential_state[2]_i_2_n_0\,
      I4 => state(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAAAEAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \bit_nr_reg_n_0_[1]\,
      I2 => \bit_nr_reg_n_0_[0]\,
      I3 => \bit_nr_reg_n_0_[2]\,
      I4 => \bit_nr[0]_i_2_n_0\,
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAAAABBAABB"
    )
        port map (
      I0 => state(2),
      I1 => RXD_i_IBUF,
      I2 => \FSM_sequential_state[2]_i_4_n_0\,
      I3 => state(1),
      I4 => \clock_16_reg_n_0_[3]\,
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \clock_16_reg_n_0_[1]\,
      I1 => \clock_16_reg_n_0_[0]\,
      I2 => \clock_16_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
RXD_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RXD_i,
      O => RXD_i_IBUF
    );
baudrate_comp: entity work.clockDivider
     port map (
      AR(0) => rst_i_IBUF,
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      clk_o => clk_o
    );
\bit_buffer[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[1]\,
      I1 => \bit_nr_reg_n_0_[0]\,
      I2 => \bit_nr_reg_n_0_[2]\,
      I3 => \bit_nr[0]_i_2_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => bit_buffer(0)
    );
\bit_buffer[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[1]\,
      I1 => \bit_nr_reg_n_0_[0]\,
      I2 => \bit_nr_reg_n_0_[2]\,
      I3 => \bit_nr[0]_i_2_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => bit_buffer(1)
    );
\bit_buffer[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000400"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[0]\,
      I1 => \bit_nr_reg_n_0_[1]\,
      I2 => \bit_nr_reg_n_0_[2]\,
      I3 => \bit_nr[0]_i_2_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => bit_buffer(2)
    );
\bit_buffer[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[2]\,
      I1 => \bit_nr[0]_i_2_n_0\,
      I2 => state(2),
      I3 => state(0),
      I4 => \bit_nr_reg_n_0_[0]\,
      I5 => \bit_nr_reg_n_0_[1]\,
      O => bit_buffer(3)
    );
\bit_buffer[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[1]\,
      I1 => \bit_nr_reg_n_0_[0]\,
      I2 => \bit_nr_reg_n_0_[2]\,
      I3 => \bit_nr[0]_i_2_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => bit_buffer(4)
    );
\bit_buffer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[1]\,
      I1 => \bit_nr_reg_n_0_[0]\,
      I2 => \bit_nr_reg_n_0_[2]\,
      I3 => \bit_nr[0]_i_2_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => bit_buffer(5)
    );
\bit_buffer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[0]\,
      I1 => \bit_nr_reg_n_0_[1]\,
      I2 => \bit_nr_reg_n_0_[2]\,
      I3 => \bit_nr[0]_i_2_n_0\,
      I4 => state(2),
      I5 => state(0),
      O => bit_buffer(6)
    );
\bit_buffer[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[2]\,
      I1 => \bit_nr[0]_i_2_n_0\,
      I2 => state(2),
      I3 => state(0),
      I4 => \bit_nr_reg_n_0_[0]\,
      I5 => \bit_nr_reg_n_0_[1]\,
      O => bit_buffer(7)
    );
\bit_buffer_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(0),
      D => RXD_i_IBUF,
      Q => \bit_buffer_reg_n_0_[0]\,
      R => '0'
    );
\bit_buffer_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(1),
      D => RXD_i_IBUF,
      Q => \bit_buffer_reg_n_0_[1]\,
      R => '0'
    );
\bit_buffer_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(2),
      D => RXD_i_IBUF,
      Q => \bit_buffer_reg_n_0_[2]\,
      R => '0'
    );
\bit_buffer_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(3),
      D => RXD_i_IBUF,
      Q => \bit_buffer_reg_n_0_[3]\,
      R => '0'
    );
\bit_buffer_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(4),
      D => RXD_i_IBUF,
      Q => sel0(0),
      R => '0'
    );
\bit_buffer_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(5),
      D => RXD_i_IBUF,
      Q => sel0(1),
      R => '0'
    );
\bit_buffer_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(6),
      D => RXD_i_IBUF,
      Q => sel0(2),
      R => '0'
    );
\bit_buffer_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => bit_buffer(7),
      D => RXD_i_IBUF,
      Q => sel0(3),
      R => '0'
    );
\bit_nr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7FFF4000A0008"
    )
        port map (
      I0 => \bit_nr[0]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => RXD_i_IBUF,
      I5 => \bit_nr_reg_n_0_[0]\,
      O => \bit_nr[0]_i_1_n_0\
    );
\bit_nr[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \clock_16_reg_n_0_[3]\,
      I1 => \clock_16_reg_n_0_[1]\,
      I2 => \clock_16_reg_n_0_[0]\,
      I3 => \clock_16_reg_n_0_[2]\,
      I4 => state(1),
      O => \bit_nr[0]_i_2_n_0\
    );
\bit_nr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020EFFFF0E020000"
    )
        port map (
      I0 => RXD_i_IBUF,
      I1 => state(1),
      I2 => state(2),
      I3 => \bit_nr_reg_n_0_[0]\,
      I4 => bit_nr,
      I5 => \bit_nr_reg_n_0_[1]\,
      O => \bit_nr[1]_i_1_n_0\
    );
\bit_nr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0C0AFFFF030A0000"
    )
        port map (
      I0 => RXD_i_IBUF,
      I1 => \bit_nr[2]_i_2_n_0\,
      I2 => state(2),
      I3 => state(1),
      I4 => bit_nr,
      I5 => \bit_nr_reg_n_0_[2]\,
      O => \bit_nr[2]_i_1_n_0\
    );
\bit_nr[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \bit_nr_reg_n_0_[1]\,
      I1 => \bit_nr_reg_n_0_[0]\,
      O => \bit_nr[2]_i_2_n_0\
    );
\bit_nr[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000A000B"
    )
        port map (
      I0 => \bit_nr[0]_i_2_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => RXD_i_IBUF,
      O => bit_nr
    );
\bit_nr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \bit_nr[0]_i_1_n_0\,
      Q => \bit_nr_reg_n_0_[0]\,
      R => '0'
    );
\bit_nr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \bit_nr[1]_i_1_n_0\,
      Q => \bit_nr_reg_n_0_[1]\,
      R => '0'
    );
\bit_nr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \bit_nr[2]_i_1_n_0\,
      Q => \bit_nr_reg_n_0_[2]\,
      R => '0'
    );
clk_i_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_i_IBUF,
      O => clk_i_IBUF_BUFG
    );
clk_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_i,
      O => clk_i_IBUF
    );
clk_o_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_o,
      O => clk_o_BUFG
    );
\clock_16[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_16_reg_n_0_[0]\,
      O => \clock_16[0]_i_1_n_0\
    );
\clock_16[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \clock_16_reg_n_0_[0]\,
      I1 => \clock_16_reg_n_0_[1]\,
      O => \clock_16[1]_i_1_n_0\
    );
\clock_16[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \clock_16_reg_n_0_[1]\,
      I1 => \clock_16_reg_n_0_[0]\,
      I2 => \clock_16_reg_n_0_[2]\,
      O => \clock_16[2]_i_1_n_0\
    );
\clock_16[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C1"
    )
        port map (
      I0 => RXD_i_IBUF,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \clock_16[3]_i_1_n_0\
    );
\clock_16[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \clock_16_reg_n_0_[3]\,
      I1 => \clock_16_reg_n_0_[1]\,
      I2 => \clock_16_reg_n_0_[0]\,
      I3 => \clock_16_reg_n_0_[2]\,
      O => \clock_16[3]_i_2_n_0\
    );
\clock_16_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \clock_16[0]_i_1_n_0\,
      Q => \clock_16_reg_n_0_[0]\,
      R => \clock_16[3]_i_1_n_0\
    );
\clock_16_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \clock_16[1]_i_1_n_0\,
      Q => \clock_16_reg_n_0_[1]\,
      R => \clock_16[3]_i_1_n_0\
    );
\clock_16_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \clock_16[2]_i_1_n_0\,
      Q => \clock_16_reg_n_0_[2]\,
      R => \clock_16[3]_i_1_n_0\
    );
\clock_16_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_o_BUFG,
      CE => '1',
      D => \clock_16[3]_i_2_n_0\,
      Q => \clock_16_reg_n_0_[3]\,
      R => \clock_16[3]_i_1_n_0\
    );
\digit_i[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[2]\,
      I2 => \bit_buffer_reg_n_0_[0]\,
      I3 => \bit_buffer_reg_n_0_[1]\,
      O => tmp(0)
    );
\digit_i[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[2]\,
      I2 => \bit_buffer_reg_n_0_[1]\,
      I3 => \bit_buffer_reg_n_0_[0]\,
      O => tmp(1)
    );
\digit_i[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[0]\,
      I2 => \bit_buffer_reg_n_0_[1]\,
      I3 => \bit_buffer_reg_n_0_[2]\,
      O => tmp(2)
    );
\digit_i[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[2]\,
      I2 => \bit_buffer_reg_n_0_[0]\,
      I3 => \bit_buffer_reg_n_0_[1]\,
      O => tmp(3)
    );
\digit_i[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[1]\,
      I2 => \bit_buffer_reg_n_0_[2]\,
      I3 => \bit_buffer_reg_n_0_[0]\,
      O => tmp(4)
    );
\digit_i[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[2]\,
      I2 => \bit_buffer_reg_n_0_[0]\,
      I3 => \bit_buffer_reg_n_0_[1]\,
      O => tmp(5)
    );
\digit_i[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => \bit_buffer_reg_n_0_[3]\,
      I1 => \bit_buffer_reg_n_0_[0]\,
      I2 => \bit_buffer_reg_n_0_[2]\,
      I3 => \bit_buffer_reg_n_0_[1]\,
      O => tmp(6)
    );
\digit_i[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2094"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \digit_i[25]_i_1_n_0\
    );
\digit_i[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A4C8"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => \digit_i[26]_i_1_n_0\
    );
\digit_i[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A210"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      O => \digit_i[27]_i_1_n_0\
    );
\digit_i[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C214"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \digit_i[28]_i_1_n_0\
    );
\digit_i[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5710"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(0),
      O => \digit_i[29]_i_1_n_0\
    );
\digit_i[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5190"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => sel0(1),
      O => \digit_i[30]_i_1_n_0\
    );
\digit_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => state(0),
      I1 => RXD_i_IBUF,
      I2 => state(2),
      I3 => \bit_nr[0]_i_2_n_0\,
      O => digit_i(23)
    );
\digit_i[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4025"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => \digit_i[31]_i_2_n_0\
    );
\digit_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(0),
      Q => data2(1),
      R => '0'
    );
\digit_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(1),
      Q => data2(2),
      R => '0'
    );
\digit_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(2),
      Q => data2(3),
      R => '0'
    );
\digit_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(3),
      Q => data2(4),
      R => '0'
    );
\digit_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(4),
      Q => data2(5),
      R => '0'
    );
\digit_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(5),
      Q => data2(6),
      R => '0'
    );
\digit_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => tmp(6),
      Q => data2(7),
      R => '0'
    );
\digit_i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[25]_i_1_n_0\,
      Q => data3(1),
      R => '0'
    );
\digit_i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[26]_i_1_n_0\,
      Q => data3(2),
      R => '0'
    );
\digit_i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[27]_i_1_n_0\,
      Q => data3(3),
      R => '0'
    );
\digit_i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[28]_i_1_n_0\,
      Q => data3(4),
      R => '0'
    );
\digit_i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[29]_i_1_n_0\,
      Q => data3(5),
      R => '0'
    );
\digit_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[30]_i_1_n_0\,
      Q => data3(6),
      R => '0'
    );
\digit_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_o_BUFG,
      CE => digit_i(23),
      D => \digit_i[31]_i_2_n_0\,
      Q => data3(7),
      R => '0'
    );
display_comp: entity work.display
     port map (
      AR(0) => rst_i_IBUF,
      Q(13 downto 7) => data3(7 downto 1),
      Q(6 downto 0) => data2(7 downto 1),
      clk_i_IBUF_BUFG => clk_i_IBUF_BUFG,
      \led7_an_o_reg[3]_0\(3 downto 0) => led7_an_o_OBUF(3 downto 0),
      \led7_seg_o_reg[7]_0\(7 downto 0) => led7_seg_o_OBUF(7 downto 0)
    );
\led7_an_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_an_o_OBUF(0),
      O => led7_an_o(0)
    );
\led7_an_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_an_o_OBUF(1),
      O => led7_an_o(1)
    );
\led7_an_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_an_o_OBUF(2),
      O => led7_an_o(2)
    );
\led7_an_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_an_o_OBUF(3),
      O => led7_an_o(3)
    );
\led7_seg_o_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(0),
      O => led7_seg_o(0)
    );
\led7_seg_o_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(1),
      O => led7_seg_o(1)
    );
\led7_seg_o_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(2),
      O => led7_seg_o(2)
    );
\led7_seg_o_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(3),
      O => led7_seg_o(3)
    );
\led7_seg_o_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(4),
      O => led7_seg_o(4)
    );
\led7_seg_o_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(5),
      O => led7_seg_o(5)
    );
\led7_seg_o_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(6),
      O => led7_seg_o(6)
    );
\led7_seg_o_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led7_seg_o_OBUF(7),
      O => led7_seg_o(7)
    );
rst_i_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rst_i,
      O => rst_i_IBUF
    );
end STRUCTURE;
