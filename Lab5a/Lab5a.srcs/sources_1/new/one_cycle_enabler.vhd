----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2024 19:53:45
-- Design Name: 
-- Module Name: one_cycle_enabler - Behavioral
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

entity one_cycle_enabler is
    Port ( clk_i : in STD_LOGIC := '0';
           en_i : in STD_LOGIC_VECTOR(1 downto 0) := "00";
           en_o : out STD_LOGIC := '0'
           );
end one_cycle_enabler;

architecture Behavioral of one_cycle_enabler is
    signal old: std_logic_vector(1 downto 0) := "00";

begin
    process(clk_i)
        variable en: std_logic_vector(1 downto 0) := "00";
    begin
        if rising_edge(clk_i) then
            en := en_i;
            old <= en_i;
            en_o <= '0';
            if en /= old and (en = "10" or en = "01") then
                en_o <= '1';
            end if;
        end if; 
    end process;
end Behavioral;
