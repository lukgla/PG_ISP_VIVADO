----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.02.2024 23:22:54
-- Design Name: 
-- Module Name: top - Behavioral
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
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_misc.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    port(
        clk_i: in std_logic;
        rst_i: in std_logic;
        led_0: out std_logic_vector (2 downto 0) := (others => '0') 
    );
end top;

architecture Behavioral of top is
    signal counter: std_logic_vector (2 downto 0) := (others => '0');
    
begin
    process(clk_i,rst_i) is
    begin
        if rst_i = '1' then
            counter <= (others => '0');
         elsif rising_edge(clk_i) then
            counter <= counter + 1;
        end if;
    end process;

    led_0 <= counter xor shr(counter,"1");
     

end Behavioral;
