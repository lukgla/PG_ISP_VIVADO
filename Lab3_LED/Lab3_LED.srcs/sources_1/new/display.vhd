----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2024 23:15:55
-- Design Name: 
-- Module Name: display - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity display is
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           digit_i : in STD_LOGIC_VECTOR (31 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0));
end display;

architecture Behavioral of display is
component clockDivider is
    generic (one_cycles: natural:= 10 ; zero_cycles: natural := 10; initial_state: STD_LOGIC := '0');
    Port ( clk_i : in STD_LOGIC;
           rst_i: in STD_LOGIC;
           clk_o : out STD_LOGIC);
end component clockDivider;

signal clk_d10: std_logic;
begin
    process(clk_d10,rst_i)
        subtype channel_type is integer range 3 downto 0;
        variable channel: channel_type; -- default is 3
    begin
    -- initial state will be overriden by later ocuring assigments;
    led7_seg_o <= (others => '1');
    led7_an_o <= (others => '1');
    
    if rst_i = '1' then
        channel :=  0; -- overflow will return to first
        led7_an_o <= (others => '0');
        led7_seg_o <= (others => '0');
    elsif rising_edge(clk_d10) then
        channel := channel + 1;
        led7_an_o(channel) <= '0';
        led7_seg_o <= digit_i((channel+1) * 8-1 downto channel *8);
    end if;
    
    end process;

    clock_divider: clockDivider port map(
        clk_i => clk_i,
        rst_i => rst_i,
        clk_o => clk_d10);

end Behavioral;
