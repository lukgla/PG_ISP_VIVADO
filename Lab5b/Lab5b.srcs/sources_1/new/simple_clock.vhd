----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.03.2024 23:28:25
-- Design Name: 
-- Module Name: simple_clock - Behavioral
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

entity simple_clock is
    generic(div: natural := 1000);
    Port ( clk_i : in STD_LOGIC;
           rst_i : in STD_LOGIC;
           clk_o : out STD_LOGIC := '0');
end simple_clock;

architecture Behavioral of simple_clock is
    signal counter: natural range 0 to div := 0;
    signal clk: std_logic := '0';
begin
    process(clk_i,rst_i)
    begin
        if rising_edge(clk_i) then
           if rst_i = '1' then
             counter <= 0;
             clk <= '0';
           else
            if counter >= div then
                clk <= not clk;
                counter <= 0;
            else
                counter  <= counter + 1;
            end if;
           end if; 
        end if;
    end process;
    clk_o <= clk;

end Behavioral;
