----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2024 23:58:15
-- Design Name: 
-- Module Name: tb_5b_singen - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_5b_singen is
--  Port ( );
end tb_5b_singen;

architecture Behavioral of tb_5b_singen is
signal clk: std_logic := '0';
signal aclken: std_logic := '1';
signal aresetn: std_logic := '1';
signal s_axis_config_tvalid: std_logic := '0';
signal s_axis_config_tdata             : STD_LOGIC_VECTOR(31 DOWNTO 0);
signal s_axis_config_tlast             : STD_LOGIC;
signal m_axis_data_tvalid              : STD_LOGIC;
signal m_axis_data_tdata               : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal event_s_config_tlast_missing    : STD_LOGIC;
signal event_s_config_tlast_unexpected : STD_LOGIC;


signal ch1_tdata               : STD_LOGIC_VECTOR(15 DOWNTO 0);
signal ch2_tdata               : STD_LOGIC_VECTOR(15 DOWNTO 0);
begin
clk <= not clk after 5 ns;

singen_inst: entity work.singen
port map (
  aclk                            => clk,
  aclken                          => aclken,
  aresetn                         => aresetn,
  s_axis_config_tvalid            => s_axis_config_tvalid,
  s_axis_config_tdata             => s_axis_config_tdata,
  s_axis_config_tlast             => s_axis_config_tlast,
  m_axis_data_tvalid              => m_axis_data_tvalid,
  m_axis_data_tdata               => m_axis_data_tdata,
  event_s_config_tlast_missing    => event_s_config_tlast_missing,
  event_s_config_tlast_unexpected => event_s_config_tlast_unexpected
);


process
begin
wait until rising_edge(clk);
ch1_tdata <= m_axis_data_tdata;
wait until rising_edge(clk);
ch2_tdata <= m_axis_data_tdata;
end process;

process
begin
    wait until rising_edge(clk);
    aresetn <= '1';
    for i in 0 to 10 loop
    
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    aresetn <= '0';
    
    end loop;
     aresetn <= '1';

    wait;
end process;

end Behavioral;
