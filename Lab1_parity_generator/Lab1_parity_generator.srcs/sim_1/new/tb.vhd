----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.02.2024 23:58:02
-- Design Name: 
-- Module Name: tb - Behavioral
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
use IEEE.std_logic_arith.ALL;
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb is

end tb;

architecture Behavioral of tb is
component top is
    Port ( sw_i : in STD_LOGIC_VECTOR (7 downto 0);
           led7_an_o : out STD_LOGIC_VECTOR (3 downto 0);
           led7_seg_o : out STD_LOGIC_VECTOR (7 downto 0)
    );
end component top;

signal sw_i : std_logic_vector (7 downto 0) := (others => '0');
signal led7_seg_i : std_logic_vector (7 downto 0) := (others => '1');
signal led7_an_i: std_logic_vector ( 7 downto 0) := (others => '1');
begin

dut: top port map(
    sw_i => sw_i,
    led7_an_o => led7_an_i(7 downto 4),
    led7_seg_o => led7_seg_i 
);


stim: process is
    begin
--    sw_i <= (others => '0'); -- reset
    for i in sw_i'range loop    
        wait for 100 ms;
        sw_i(i) <= '1';
     end loop;
    end process;

end Behavioral;
